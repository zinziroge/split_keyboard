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
BleKeyboard bleKeyboard;
extern int col_pins[];
extern int row_pins[];
extern const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS];

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

    // ble
    bleKeyboard.begin();
    bleKeyboard.releaseAll();

    // serial for debug
    Serial.begin(115200);
    Serial.println("start serial.");
}

void loop(void)
{
    if (bleKeyboard.isConnected()) {
        int c, r;
        int sw_val;
        char buf[128];

        for (c = 0; c < MATRIX_COLS; c++) { // output
            digitalWrite(col_pins[c], LOW);
            delay(KEY_SCAN_WAIT_MS);
            sw_val = digitalRead(row_pins[r]);
            for (r = 0; r < MATRIX_ROWS; r++) { // input
                if (sw_val == 0) {
                    uint16_t keycode = keymaps[0][r][c];
                    bleKeyboard.write(keycode);
                    sprintf(buf, "(%d, %d)=%d", r, c, sw_val);
                    Serial.println(buf);
                }
            }
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
