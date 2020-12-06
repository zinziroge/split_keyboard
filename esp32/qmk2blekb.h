#pragma once

#include <BleKeyboard.h>
//#include "keymap_jp.h"

/* Punctuation */
#define KC_ENT KC_ENTER
#define KC_ESC KC_ESCAPE
#define KC_BSPC KC_BSPACE
#define KC_SPC KC_SPACE
#define KC_MINS KC_MINUS
#define KC_EQL KC_EQUAL
#define KC_LBRC KC_LBRACKET
#define KC_RBRC KC_RBRACKET
#define KC_BSLS KC_BSLASH
#define KC_NUHS KC_NONUS_HASH
#define KC_SCLN KC_SCOLON
#define KC_QUOT KC_QUOTE
#define KC_GRV KC_GRAVE
#define KC_COMM KC_COMMA
#define KC_SLSH KC_SLASH
#define KC_NUBS KC_NONUS_BSLASH

/* Modifiers */
#define KC_LCTL KC_LCTRL
#define KC_LSFT KC_LSHIFT
#define KC_LOPT KC_LALT
#define KC_LCMD KC_LGUI
#define KC_LWIN KC_LGUI
#define KC_RCTL KC_RCTRL
#define KC_RSFT KC_RSHIFT
#define KC_ALGR KC_RALT
#define KC_ROPT KC_RALT
#define KC_RCMD KC_RGUI
#define KC_RWIN KC_RGUI

/* Lock Keys */
#define KC_CLCK KC_CAPSLOCK
#define KC_CAPS KC_CAPSLOCK
#define KC_SLCK KC_SCROLLLOCK
#define KC_NLCK KC_NUMLOCK
#define KC_LCAP KC_LOCKING_CAPS
#define KC_LNUM KC_LOCKING_NUM
#define KC_LSCR KC_LOCKING_SCROLL

/* Commands */
#define KC_PSCR KC_PSCREEN
//#define KC_PAUS KC_PAUSE
//#define KC_BRK KC_PAUSE
#define KC_INS KC_INSERT
#define KC_DEL KC_DELETE
#define KC_PGDN KC_PGDOWN
#define KC_RGHT KC_RIGHT
//#define KC_APP KC_APPLICATION
//#define KC_EXEC KC_EXECUTE
//#define KC_SLCT KC_SELECT
//#define KC_AGIN KC_AGAIN
//#define KC_PSTE KC_PASTE
//#define KC_ERAS KC_ALT_ERASE
//#define KC_CLR KC_CLEAR

/* Japanese specific */
#define KC_ZKHK KC_GRAVE
#define KC_RO KC_INT1
#define KC_KANA KC_INT2
#define KC_JYEN KC_INT3
#define KC_HENK KC_INT4
#define KC_MHEN KC_INT5

// keycode
// 0x00~0x7F
#define     KC_NO           0x00
#define     KC_ROLL_OVER    0x01
#define     KC_POST_FAIL    0x02
#define     KC_UNDEFINED    0x03

#define     KC_A 'a' //,
#define     KC_B 'b' //,
#define     KC_C 'c' //,
#define     KC_D 'd' //,
#define     KC_E 'e' //,
#define     KC_F 'f' //,
#define     KC_G 'g' //,
#define     KC_H 'h' //,
#define     KC_I 'i' //,
#define     KC_J 'h' //,
#define     KC_K 'k' //,
#define     KC_L 'l' //,
#define     KC_M 'm' //,  // 0x10
#define     KC_N 'n' //,
#define     KC_O 'o' //,
#define     KC_P 'p' //,
#define     KC_Q 'q' //,
#define     KC_R 'r' //,
#define     KC_S 's' //,
#define     KC_T 't' //,
#define     KC_U 'u' //,
#define     KC_V 'v' //,
#define     KC_W 'w' //,
#define     KC_X 'x' //,
#define     KC_Y 'y' //,
#define     KC_Z 'z' //,
#define     KC_1 '1' //,
#define     KC_2 '2' //,
#define     KC_3 '3' //,  // 0x20
#define     KC_4 '4' //,
#define     KC_5 '5' //,
#define     KC_6 '6' //,
#define     KC_7 '7' //,
#define     KC_8 '8' //,
#define     KC_9 '9' //,
#define     KC_0 '0' //,
#define     KC_ENTER        KEY_RETURN
#define     KC_ESCAPE       KEY_ESC
#define     KC_BSPACE       KEY_BACKSPACE
#define     KC_TAB          KEY_TAB
#define     KC_SPACE        ' '
#define     KC_MINUS        '-'
#define     KC_EQUAL        '='
#define     KC_LBRACKET     '['
#define     KC_RBRACKET     ']'  // 0x30
#define     KC_BSLASH       '\\'
#define     KC_NONUS_HASH   '~'
#define     KC_SCOLON       ';'
#define     KC_QUOTE        '\''
#define     KC_GRAVE        '`'
#define     KC_COMMA        ','
#define     KC_DOT          '.'
#define     KC_SLASH        '/'

// modifier (0x80~0x87)
                                        /* qmk  ->  blekeyboard */
#define     KC_LCTRL  KEY_LEFT_CTRL     /* 0xE0 ->  0x80 */
#define     KC_LSHIFT KEY_LEFT_SHIFT
#define     KC_LALT   KEY_LEFT_ALT
#define     KC_LGUI   KEY_LEFT_GUI
#define     KC_RCTRL  KEY_RIGHT_CTRL
#define     KC_RSHIFT KEY_RIGHT_SHIFT
#define     KC_RALT   KEY_RIGHT_ALT
#define     KC_RGUI   KEY_RIGHT_GUI

#define     KC_FN 0x88

// 0x90~0x9F, international
#define KC_INT1 (0x87 + 0x09) // 0x90
#define KC_INT2 (0x88 + 0x09)
#define KC_INT3 (0x89 + 0x09)
#define KC_INT4 (0x8a + 0x09)
#define KC_INT5 (0x8b + 0x09)
#define KC_INT6 (0x8c + 0x09)
#define KC_INT7 (0x8d + 0x09)
#define KC_INT8 (0x8e + 0x09)
#define KC_INT9 (0x8f + 0x09)

// 0xA0~0xAF

// over 0xB0
//#define     KC_BKSP KEY_BACKSPACE //= 0xB2;
//#define     KC_BKSP KEY_TAB //= 0xB3;
//#define     KC_BKSP KEY_RETURN //= 0xB0;
//#define     KC_BKSP KEY_ESC //= 0xB1;
#define     KC_CAPSLOCK     KEY_CAPS_LOCK // 0xC1 = 0x39 + 0x88
#define     KC_F1  KEY_F1 //= 0xC2 =  0x3A + 88
#define     KC_F2  KEY_F2 //= 0xC3;
#define     KC_F3  KEY_F3 //= 0xC4;
#define     KC_F4  KEY_F4 //= 0xC5;
#define     KC_F5  KEY_F5 //= 0xC6;
#define     KC_F6  KEY_F6 //= 0xC7;
#define     KC_F7  KEY_F7 //= 0xC8 = 0x40 + 0x88
#define     KC_F8  KEY_F8 //= 0xC9;
#define     KC_F9  KEY_F9 //= 0xCA;
#define     KC_F10 KEY_F10// = 0xCB;,
#define     KC_F11 KEY_F11// = 0xCC;,
#define     KC_F12 KEY_F12// = 0xCD;,
//#define     KC_PSCREEN,
//#define     KC_SCROLLLOCK,
//#define     KC_PAUSE,
#define     KC_INSERT KEY_INSERT

#define     KC_HOME         KEY_HOME// = 0xD2 = 0x4A + 0x88
#define     KC_PGUP         KEY_PAGE_UP// = 0xD3;
#define     KC_DELETE       KEY_DELETE// = 0xD4;
#define     KC_END          KEY_END// = 0xD5;,
#define     KC_PGDOWN       KEY_PAGE_DOWN// = 0xD6;
#define     KC_RIGHT        KEY_RIGHT_ARROW// = 0xD7;
#define     KC_LEFT         KEY_LEFT_ARROW// = 0xD8 = 0x50 + 0x88
#define     KC_DOWN         KEY_DOWN_ARROW// = 0xD9;
#define     KC_UP           KEY_UP_ARROW// = 0xDA;
#define     KC_NUMLOCK      (0x53 + 0x88) // 0xDB

// 0xDC~0xEF

// 0xF0~0xFB
#define     KC_F13 KEY_F13 // = 0xF0 = 0x68 + 0x88
#define     KC_F14 KEY_F14 // = 0xF1;,
#define     KC_F15 KEY_F15 // = 0xF2;,
#define     KC_F16 KEY_F16 // = 0xF3;,
#define     KC_F17 KEY_F17 // = 0xF4;,
#define     KC_F18 KEY_F18 // = 0xF5;,
#define     KC_F19 KEY_F19 // = 0xF6;,
#define     KC_F20 KEY_F20 // = 0xF7;,
#define     KC_F21 KEY_F21 // = 0xF8 = 0x70 + 0x88
#define     KC_F22 KEY_F22 // = 0xF9;,
#define     KC_F23 KEY_F23 // = 0xFA;,
#define     KC_F24 KEY_F24 // = 0xFB = 0x74 + 0x88


// JP
//https://beta.docs.qmk.fm/using-qmk/simple-keycodes/keycodes_basic
#define JP_ZKHK KC_GRV  // Zenkaku ↔︎ Hankaku ↔ Kanji (半角 ↔ 全角 ↔ 漢字)
#define JP_MINS KC_MINS // -
#define JP_CIRC KC_EQL  // ^
#define JP_AT   KC_LBRC // @
#define JP_LBRC KC_RBRC // [
#define JP_SCLN KC_SCLN // ;
#define JP_COLN KC_QUOT // :
#define JP_COMM KC_COMM // ,
#define JP_DOT  KC_DOT  // .
#define JP_SLSH KC_SLSH // /
#define JP_EISU KC_CAPS // Eisū (英数)

//#define JP_KANA KC_INT0 // Katakana ↔ Hiragana ↔ Rōmaji (カタカナ ↔ ひらがな ↔ ローマ字)
//#define JP_HENK KC_INT2 // Henkan (変換)
#define JP_BSLS KC_INT1 // (backslash)
#define JP_YEN  KC_INT3 // ¥
#define JP_MHEN KC_INT5 // Muhenkan (無変換)
#define JP_RBRC KC_NUHS // ], 0x30
