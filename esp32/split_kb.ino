/*
    key scan flow:
      1. loop row, col
      2. r,c -> keymaps[][r][c] -> qmk keycode -> blekb keycode
*/
#include <stdint.h>

#include <BleKeyboard.h>
#include <M5Stack.h>

// keyboard
#include "keysw.h"
//#include "blekb2qmk.h"
//#include "keymap_jp.h"


// 
BleKeyboard bleKeyboard("skb81");
extern int col_pins[];
extern int row_pins[];
extern const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS];

const uint8_t codecnv_kc2blekb[]= // to ascii
{
    0x00, //KC_NO = 0x00,
    0x00, //KC_ROLL_OVER,
    0x00, //KC_POST_FAIL,
    0x00, //KC_UNDEFINED,
	0x61, //0x04,          // a
	0x62, //0x05,          // b
	0x63, //0x06,          // c
	0x64, //0x07,          // d
	0x65, //0x08,          // e
	0x66, //0x09,          // f
	0x67, //0x0a,          // g
    0x68, //0x0b,          // h
	0x69, //0x0c,          // i
	0x6a, //0x0d,          // j
	0x6b, //0x0e,          // k
	0x6c, //0x0f,          // l
	0x6d, //0x10,          // m
	0x6e, //0x11,          // n
	0x6f, //0x12,          // o
	0x70, //0x13,          // p
	0x71, //0x14,          // q
	0x72, //0x15,          // r
	0x73, //0x16,          // s
	0x74, //0x17,          // t
	0x75, //0x18,          // u
	0x76, //0x19,          // v
	0x77, //0x1a,          // w
	0x78, //0x1b,          // x
	0x79, //0x1c,          // y
	0x7a, //0x1d,          // z
	0x30, //0x1e,          // 1
	0x31, //0x1f,          // 2
	0x32, //0x20,          // 3
	0x33, //0x21,          // 4
	0x34, //0x22,          // 5
	0x35, //0x23,          // 6
	0x36, //0x24,          // 7
	0x37, //0x25,          // 8
	0x38, //0x26,          // 9
	0x39, //0x27,          // 0
    KEY_RETURN, // 0x28
    KEY_ESC, //
    KEY_BACKSPACE, //
    KEY_TAB, //
    ' ',
    '-',
    '=',
    '[',
    ']', // 0x30
    '\\',
    '#',
    ';',
    '\'',
    '`',
    ',',
    '.',
    '/',
    KEY_CAPS_LOCK, // 0x39
    KEY_F1, // 0x3a
    KEY_F2,
    KEY_F3,
    KEY_F4,
    KEY_F5,
    KEY_F6,
    KEY_F7, // 0x40
    KEY_F8,
    KEY_F9,
    KEY_F10,
    KEY_F11,
    KEY_F12, // 0x45
    //KC_PSCREEN,
    //KC_SCROLLLOCK,
    //KC_PAUSE,
    KEY_INSERT, // 0x49
    KEY_HOME,
    KEY_PAGE_UP,
    KEY_DELETE,
    KEY_END,
    KEY_PAGE_DOWN, // 0x4e
    KEY_RIGHT_ARROW, // KC_RIGHT,0x4f
    KEY_LEFT_ARROW, // KC_LEFT,  // 0x50
    KEY_DOWN_ARROW, // KC_DOWN,
    KEY_UP_ARROW, // KC_UP,
    0x00, //KC_NUMLOCK, // 0x53
    0x00, //KC_KP_SLASH,
    0x00, //KC_KP_ASTERISK,
    0x00, //KC_KP_MINUS,
    0x00, //KC_KP_PLUS,
    0x00, //KC_KP_ENTER,
    0x00, //KC_KP_1,
    0x00, //KC_KP_2,
    0x00, //KC_KP_3,
    0x00, //KC_KP_4,
    0x00, //KC_KP_5,
    0x00, //KC_KP_6,
    0x00, //KC_KP_7,
    0x00, //KC_KP_8,  // 0x60
    0x00, //KC_KP_9,
    0x00, //KC_KP_0,
    0x00, //KC_KP_DOT,
    0x00, //KC_NONUS_BSLASH,
    0x00, //KC_APPLICATION,
    0x00, //KC_POWER,
    0x00, //KC_KP_EQUAL,
    KEY_F13, // 0x68
    KEY_F14,
    KEY_F15,
    KEY_F16,
    KEY_F17,
    KEY_F18,
    KEY_F19,
    KEY_F20,
    KEY_F21,
    KEY_F22,
    KEY_F23,
    KEY_F24, // 0x73
    0x00, //KC_EXECUTE,
    0x00, //KC_HELP,
    0x00, //KC_MENU,
    0x00, //KC_SELECT,
    0x00, //KC_STOP,
    0x00, //KC_AGAIN,
    0x00, //KC_UNDO,
    0x00, //KC_CUT,
    0x00, //KC_COPY,
    0x00, //KC_PASTE,
    0x00, //KC_FIND,
    0x00, //KC__MUTE, 0x79
};

p
/*      0xE0    0x80 */
#define KC_LCTL KEY_LEFT_CTRL
#define KC_LSFT KEY_LEFT_SHIFT
#define KC_LALT KEY_LEFT_ALT
#define KC_LGUI KEY_LEFT_GUI
#define KC_RCTL KEY_RIGHT_CTRL
#define KC_RSFT KEY_RIGHT_SHIFT
#define KC_RALT KEY_RIGHT_ALT
#define KC_RGUI KEY_RIGHT_GUI

/*            0xDA */
#define KC_UP KEY_UP_ARROW
#define KC_DOWN KEY_DOWN_ARROW
#define KC_LEFT KEY_LEFT_ARROW
#define KC_RGHT KEY_RIGHT_ARROW
#define KC_BSPC KEY_BACKSPACE
#define KC_TAB KEY_TAB
#define KC_ENT KEY_RETURN
#define KC_ESC KEY_ESC
#define KC_INS KEY_INSERT
#define KC_DEL KEY_DELETE
#define KC_PGUP KEY_PAGE_UP
#define KC_PGDN KEY_PAGE_DOWN
#define KC_HOME KEY_HOME
#define KC_END KEY_END
#define KC_CAPS KEY_CAPS_LOCK
#define KC_F1 KEY_F1
#define KC_F2 KEY_F2
#define KC_F3 KEY_F3
#define KC_F4 KEY_F4
#define KC_F5 KEY_F5
#define KC_F6 KEY_F6
#define KC_F7 KEY_F7
#define KC_F8 KEY_F8
#define KC_F9 KEY_F9
#define KC_FC10 KEY_F10
#define KC_FC11 KEY_F11
#define KC_FC12 KEY_F12
#define KC_FC13 KEY_F13
#define KC_FC14 KEY_F14
#define KC_FC15 KEY_F15
#define KC_FC16 KEY_F16
#define KC_FC17 KEY_F17
#define KC_FC18 KEY_F18
#define KC_FC19 KEY_F19
#define KC_FC20 KEY_F20
#define KC_FC21 KEY_F21
#define KC_FC22 KEY_F22
#define KC_FC23 KEY_F23
#define KC_FC24 KEY_F24
#endif
// 
void setup(void)
{
    int r, c;
    // cols
    for (c = 0; c < MATRIX_COLS; c++) {
        pinMode(col_pins[c], OUTPUT);
        digitalWrite(col_pins[c], HIGH);
    }
    // rows
    for (r = 0; r < 4; r++) {
        pinMode(row_pins[r], INPUT); // pull up by external register.
    }
    for (r = 4; r < MATRIX_ROWS; r++) {
        pinMode(row_pins[r], INPUT_PULLUP); // pull up by internal register.
    }

    // serial for debug
    Serial.begin(115200);
    Serial.println("start serial.");

    // ble
    bleKeyboard.begin();
    Serial.println(bleKeyboard.isConnected());
    //bleKeyboard.releaseAll();
}

bool is_ascii(const uint16_t key)
{
    if(key <= 0x03) {
        return false;
    } else if(key <= 0x38){
        return true;
    } else  {
        return false;
    }
}

void loop(void)
{
    if (1){
    //if (bleKeyboard.isConnected()) {
        int c, r;
        int sw_val;
        char buf[128];

        for (c = 0; c < MATRIX_COLS; c++) { // output
            digitalWrite(col_pins[c], LOW);
            for (r = 0; r < MATRIX_ROWS; r++) { // input
                delay(KEY_SCAN_WAIT_MS);
                sw_val = digitalRead(row_pins[r]);
                if (sw_val == 0) {
                    uint16_t qmk_keycode = keymaps[0][r][c];
                    // bleKeyboard.write(keycode); // keycode < 128 はascii code, それ以上は特別対応される
                    if(is_ascii(qmk_keycode)) {
                        // qmk keycode から ascii codeに変換してから渡す
                        bleKeyboard.write(codecnv_kc2blekb[keycode]);
                    } else {
                        bleKeyboard.write(keycode);
                    }
                    sprintf(buf, "(%d, %d)=%d,0x%02x,0x%02x",
                        r, c, sw_val, keycode, 'a');
                    Serial.println(buf);
                }
            }
            digitalWrite(col_pins[c], HIGH);
        }
    }
}

#if 0
void loop(void)
{
    int c, r;
    int sw_val;
    char buf[128];

    for (c = 0; c < MATRIX_COLS; c++) { // output
        digitalWrite(col_pins[c], LOW);
        for (r = 0; r < MATRIX_ROWS; r++) { // input
            delay(KEY_SCAN_DELAY_MS);
            sw_val = digitalRead(row_pins[r]);
            if (sw_val == 0) {
                uint16_t keycode = keymaps[0][r][c];
                bleKeyboard.press(keycode);
                sprintf(buf, "(%d, %d)=%d,0x%02x",
                    r, c, sw_val, keycode);
                Serial.println(buf);
            }
        }
        digitalWrite(col_pins[c], HIGH);
    }
}

void loop_2(void)
{
    digitalWrite(PIN_COL_0, LOW);
    delay(3000);
    digitalWrite(PIN_COL_0, HIGH);
    delay(3000);
}
#endif
