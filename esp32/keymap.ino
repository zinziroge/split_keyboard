#include <stdint.h>
#include "keysw.h"
#include "keycode.h"
#include "keymap_jp.h"

//    0x64,  0x65,   0x66,    0x66,    0x67,    0x68,  /**/ 0x69,    0x6A,    0x6B,    0x6C,    0x6D,    0x6E, 0x6F, 0x80, 0x81,  \
// JP_YEN, JP_RBRC, JP_BSLS, , JP_MHEN
const uint16_t PROGMEM keymaps[][MATRIX_ROWS_I2C][MATRIX_COLS_I2C] = {
  [0] = LAYOUT( \
    KC_ESC,  KC_F1,  KC_F2,   KC_F3,   KC_F4,   KC_F5, /**/ KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_F11,  KC_F12, KC_NLCK, KC_DEL, \
    JP_ZKHK,  KC_1,   KC_2,    KC_3,    KC_4,    KC_5,  /**/ KC_6,    KC_7,    KC_8,    KC_9,    KC_0,    JP_MINS, JP_CIRC, JP_YEN, KC_BSPC,  \
    KC_TAB,   KC_Q,   KC_W,    KC_E,    KC_R,    KC_T, /**/  KC_Y,    KC_U,    KC_I,    KC_O,    KC_P,    JP_AT, JP_LBRC, KC_ENT,  \
    KC_LCTL,   KC_A,   KC_S,    KC_D,    KC_F,    KC_G, /**/    KC_H,    KC_J,    KC_K,    KC_L,    JP_SCLN, JP_COLN, JP_RBRC,    \
    KC_LSFT,            KC_Z,    KC_X,    KC_C,    KC_V,  KC_B,  /**/ KC_N,    KC_M,    JP_COMM, JP_DOT,  JP_SLSH, JP_BSLS, KC_RSFT,
    KC_CAPS, KC_LGUI,     KC_LGUI,    KC_LALT, JP_MHEN, KC_SPC, /**/ KC_SPC, KC_LEFT,KC_DOWN,KC_UP,KC_RGHT \
  )
};
#if 0
  [_LOWER] = LAYOUT( \
    KC_ESC,  KC_F1,  KC_F2,   KC_F3,   KC_F4,   KC_F5, /**/ KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_F11,  KC_F12, KC_PSCR, JP_INS, \
    XXXXXXX,  JP_EXLM,  JP_DQUO,   JP_HASH,   JP_DLR,   JP_PERC, /**/ JP_AMPR, JP_QUOT, JP_LPRN, JP_RPRN, JP_EQL, JP_TILD, JP_PIPE, KC_BSPC
    XXXXXXX,   KC_Q,   KC_W,    KC_E,    KC_R,    KC_T, /**/  KC_Y,    KC_U,    KC_I,    KC_O,    KC_P,    JP_AT, JP_LBRC,  \
    KC_LCTL,   KC_A,   KC_S,    KC_D,    KC_F,    KC_G, /**/    KC_H,    KC_J,    KC_K,    KC_L,    JP_PLUS, JP_ASTR, JP_RCBR, \
    _______,            KC_Z,    KC_X,    KC_C,    KC_V,  KC_B,  /**/ KC_N,    KC_M,    JP_LABK, JP_RABK,  JP_QUES, JP_UNDS, _______,
    KC_CAPS, _______,     _______,    _______, _______, KC_SPC, /**/ KC_SPC, _______, _______, _______, _______ \
  ),
};
#endif