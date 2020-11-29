#pragma once
#include <stdint.h>


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
