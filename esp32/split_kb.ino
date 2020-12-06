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


// 
BleKeyboard bleKeyboard("skb81_trainee");
extern int col_pins[];
extern int row_pins[];
extern const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS];
char buf[128];

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
    for(c=0; c < MATRIX_COLS; c++) {
        for(r=0; r < MATRIX_ROWS; r++){
            sprintf(buf, "(%d, %d)=0x%02x,",
                r, c, keymaps[0][r][c]);
            Serial.println(buf);
        }
    }
}

bool is_ascii(const uint16_t keycode)
{
    if(keycode <= 0x03) {
        return false;
    } else if(keycode <= 0x38){
        return true;
    } else  {
        return false;
    }
}

bool is_modifier(const uint16_t keycode)
{
    if((KC_LCTRL <= keycode) && (keycode <= KC_RGUI)) {
        return true;
    }
    return false;
}

void loop(void)
{
    static uint16_t prev_pressed_keycode = 0;
    static uint32_t prev_t = millis();

    if (1){
    //if (bleKeyboard.isConnected()) {
        int c, r;
        int sw_val;

        for (c = 0; c < MATRIX_COLS; c++) { // output
            digitalWrite(col_pins[c], LOW);
            for (r = 0; r < MATRIX_ROWS; r++) { // input
                delay(KEY_SCAN_WAIT_MS);
                uint32_t cur_t = millis();
                sw_val = digitalRead(row_pins[r]);
                uint16_t keycode = keymaps[0][r][c];
                size_t ret;

                if (sw_val == 0) { // sw is pushed
                    if(is_modifier(keycode)) {
                        ret = bleKeyboard.press(keycode); // keycode < 128 はascii code, それ以上は特別対応される
                    } else {
                        if(cur_t - prev_t > KEY_INTERVAL_MIN_MS) {
                            ret = bleKeyboard.write(keycode); // keycode < 128 はascii code, それ以上は特別対応される
                            prev_t = cur_t;
                        }
                    }
                    prev_pressed_keycode = keycode;

                    sprintf(buf, "(%d, %d)=%d,0x%02x,'%c', %d",
                        r, c, sw_val, keycode, (char)(keycode & 0xFF), (int)ret);
                    Serial.println(buf);
                } else {
                    if(is_modifier(keycode)) {
                        bleKeyboard.release(keycode); // keycode < 128 はascii code, それ以上は特別対応される
                    }
                }
            } // r
            digitalWrite(col_pins[c], HIGH);
        } // c
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
