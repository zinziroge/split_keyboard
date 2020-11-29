#pragma once

////BleKeyboard name -> QMK name
#include <BleKeyboard.h>


#if 0
/* modifiers key はコードが違うので合わせる */
/*      QMK     BleKeyboard */
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
