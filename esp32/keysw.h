#pragma once
#include <stdint.h>

#include "keycode.h"
#include "keymap_jp.h"

#define PROGMEM

#define MATRIX_ROWS 9
#define MATRIX_COLS 9

#define PIN_COL_0 4
#define PIN_COL_1 16
#define PIN_COL_2 17
#define PIN_COL_3 5
#define PIN_COL_4 18
#define PIN_COL_5 19
#define PIN_COL_6 21
#define PIN_COL_7 22
#define PIN_COL_8 23

#define PIN_ROW_0 35
#define PIN_ROW_1 34
#define PIN_ROW_2 39
#define PIN_ROW_3 36
#define PIN_ROW_4 32
#define PIN_ROW_5 33
#define PIN_ROW_6 25
#define PIN_ROW_7 26
#define PIN_ROW_8 27

#define KEY_SCAN_WAIT_MS   1

/*
  KC_NO: no action
*/

// This a shortcut to help you visually see your layout.
// The following is an example using the Planck MIT layout
// The first section contains all of the arguments
// The second converts the arguments into a two-dimensional array
// 9x9(row x col)
#define LAYOUT( \
  L00,L01,L02,L03,L04,L05,    R00,R01,R02,R03,R04,R05,R06,R07,R08, \
  L10,  L11,L12,L13,L14,L15,    R10,R11,R12,R13,R14,R15,R16,R17,R18, \
  L20,   L21,L22,L23,L24,L25,    R20,R21,R22,R23,R24,R25,R26, R27, \
  L30,    L31,L32,L33,L34,L35,    R30,R31,R32,R33,R34,R35,R36, \
  L40,L41, L42, L43, L44, L45,      R40,R41,R42,R43,R44,R45,R46,\
  L50, L51,L52,L53,L54,   L55,       R50, R51,R52,R53,R54 \
) \
{ \ 
  { L00, L01, L02, L03, L04, L05,  L50, L51, L52 }, \
  { L10, L11, L12, L13, L14, L15,  L40, L41, L42 }, \
  { L20, L21, L22, L23, L24, L25,  L55, L54, L53 }, \
  { L30, L31, L32, L33, L34, L35,  L45, L44, L43 }, \
  { R00, R01, R02, R03, R04, R05, R06, R07, R08 }, \
  { R10, R11, R12, R13, R14, R15, R16, R17, R18 }, \
  { R20, R21, R22, R23, R24, R25, R26, R27,  R54 }, \
  { R30, R31, R32, R33, R34, R35, R36,  R50, R53 }, \
  { R40, R41, R42, R43, R44, R45, R46,  R51, R52 }  \
}

#if 0
const uint8_t rc2map[MATRIX_ROWS*MATRIX_COLS] {
     0,  1,  2,  3,  4,  5, /*<-left:right->*/ 36, 37, 38, 39, 40, 41, 42, 43, 44,
     9, 10, 11, 12, 13, 14, /*<-left:right->*/ 45, 46, 47, 48, 49, 50, 51, 52, 53,
    18, 19, 20, 21, 22, 23, /*<-left:right->*/ 54, 55, 56, 57, 58, 59, 60, 61, /*62*/
    27, 28, 29, 30, 31, 32, /*<-left:right->*/ 63, 64, 65, 66, 67, 68, 69, /*70, 71*/
    15, 16, 17, 35, 34, 33, /*<-left:right->*/ 72, 73, 74, 75, 76, 77, 78, /*79, 80*/
     6,  7,  8, 26, 25, 24, /*<-left:right->*/ 70, 79, 80, 71, 62
};
#endif