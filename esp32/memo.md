# BleKeyboard.cpp:

* const 型　変数 PROGMEM = hoge; でFlashメモリを使う
* extern const uint8_t _asciimap[128] PROGMEM;
  * const uint8_t _asciimap[128] がflashメモリ
  * これはacsiiコードからblekeyboardのkeycodeに変換するテーブル(=keycode)。
    * 0x04~0x1d: a~z
    * 0x84~0x9d: A-Z
  * shift時の対応がUSキーボード配列になっている。例：
   0x34|SHIFT,    // "
   0x34,          // '
  * なのでJPキーボード対応の1つの方法は _asciimap[] を書き換える
* size_t BleKeyboard::press(uint8_t k)
  * 0 <= k < 128: kは asciiコード として扱う。_asciimap[]でテーブル引きしてkeycodeに変換する
    * keycode & 0x80 がtrueのときはshiftが押されているので、left shift modifierをつける
  * 128 <= k < 144
    * it's a modifier key
      * 0x80-0x87: ctrl, shift, alt, gui(=windows key), 
  * 144 <= k < 160
    * international key
  * 160 <= k < 256
    * 136を引くので, 0x18~0x78
    * it's a non-printing key (not a modifier)
      * 0xB0-0xB3: Return/ESC/BS/Tab
      * 0xC1:      Capslock
      * 0xC2-0xCD: F1~F12 keys
      * 0xD1-0xDA: Insert/Home/PageUp/Delete/End/PageDown/arrow keys
      * 0xF0-0xFB: F13~F24 keys

* HID Keyboard/Keypad Usage
  * https://www.usb.org/sites/default/files/documents/hut1_12v2.pdf
  * https://beta.docs.qmk.fm/using-qmk/simple-keycodes/keycodes_basic

* keymap -t1-> ascii -t2-> hid keycode
  * t2は code + shift modifier

* BleKeyboard のmethodで使う変数がprivateなので、継承してBleKeyboardJPとして使うのは難しい。
* 対応策
  1. BleKeyboard.c をコピーして BleKeyboardJP.c を作って書き換える
  2. BleKeyboard のprivate変数をprotectedに変更する
  3. keymap の keycodeはBleKeyboardに合わせて、press() methodを一部書き換える
  4. mixinする。上手く結局大変な気がする。

* keyboard.c::keyboard_task(void)
  * for(r),for(c)
    * action.c::action_exec(record::r,c,pressed,etc...)
      * action.c::process_record(record)
        * action.c::process_record_handler(record)
          * action.c::process_action(record, action)
            * action_util.c::send_keyboard_report(void)
              * host.c::host_keyboard_send(report_keyboard_t keyboard_report)
                * (*driver->send_keyboard)(report);
            * action.c::register_code(action.key.code);
              * 

```c
typedef union {
    uint8_t raw[KEYBOARD_REPORT_SIZE];
    struct {
#ifdef KEYBOARD_SHARED_EP
        uint8_t report_id;
#endif
        uint8_t mods;
        uint8_t reserved;
        uint8_t keys[KEYBOARD_REPORT_KEYS];
    };
#ifdef NKRO_ENABLE
    struct nkro_report {
#    ifdef NKRO_SHARED_EP
        uint8_t report_id;
#    endif
        uint8_t mods;
        uint8_t bits[KEYBOARD_REPORT_BITS];
    } nkro;
#endif
} __attribute__((packed)) report_keyboard_t;
```

https://www.usb.org/sites/default/files/hid1_11.pdf

* 6.2.1
  * HID Descriptor, bCountryCode
    * The value bCountryCode identifies which country the hardware is localized for. Most hardware is not localized and thus this value would be zero (0). However, keyboards may use the field to indicate the language of the key caps. Devices are not required to place a value other than zero in this field, but some operating environments may require this information. The following table specifies the valid countrycodes.
* E.3Interface Descriptor(Keyboard)
  * 

```c
void BleKeyboard::taskServer(void* pvParameter) {
  ...
  bleKeyboardInstance->hid->pnp(0x02, 0xe502, 0xa111, 0x0210);
  bleKeyboardInstance->hid->hidInfo(0x00,0x01);
  ...
}
```

```c
void BLEHIDDevice::pnp(uint8_t sig, uint16_t vid, uint16_t pid, uint16_t version) {
	uint8_t pnp[] = { sig, (uint8_t) (vid >> 8), (uint8_t) vid, (uint8_t) (pid >> 8), (uint8_t) pid, (uint8_t) (version >> 8), (uint8_t) version };
	m_pnpCharacteristic->setValue(pnp, sizeof(pnp));
}

void BLEHIDDevice::hidInfo(uint8_t country, uint8_t flags) {
	uint8_t info[] = { 0x11, 0x1, country, flags };
	m_hidInfoCharacteristic->setValue(info, sizeof(info));
}
```
