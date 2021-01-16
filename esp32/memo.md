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
  