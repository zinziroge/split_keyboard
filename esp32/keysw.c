/*
  physical map
*/
#include "keysw.h"

// physical map
// esp32
int col_pins[] = {
    PIN_COL_0,
    PIN_COL_1,
    PIN_COL_2,
    PIN_COL_3,
    PIN_COL_4,
    PIN_COL_5,
    PIN_COL_6,
    PIN_COL_7,
    PIN_COL_8,
};
int row_pins[] = {
    PIN_ROW_0,
    PIN_ROW_1,
    PIN_ROW_2,
    PIN_ROW_3,
    PIN_ROW_4,
    PIN_ROW_5,
    PIN_ROW_6,
    PIN_ROW_7,
    PIN_ROW_8,
};

enum layer_number {
    _QWERTY = 0,
    _LOWER, // shift
    _RAISE, // function
};
