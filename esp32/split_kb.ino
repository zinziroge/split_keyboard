#include <BleKeyboard.h>
#include <M5Stack.h>

BleKeyboard bleKeyboard;

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

void setup(void)
{
    int r, c;
    for (c = 0; c < 9; c++) {
        pinMode(col_pins[c], OUTPUT);
        digitalWrite(PIN_COL_0, HIGH);
    }
    for (r = 0; r < 4; r++) {
        pinMode(row_pins[r], INPUT); // pull up by external register.
    }
    for (r = 4; r < 9; r++) {
        pinMode(row_pins[r], INPUT_PULLUP); // pull up by internal register.
    }

    Serial.begin(115200);
    Serial.println("start serial.");
}

void loop_2(void)
{
    digitalWrite(PIN_COL_0, LOW);
    delay(3000);
    digitalWrite(PIN_COL_0, HIGH);
    delay(3000);
}

void loop(void)
{
    int c, r;
    int sw_val;
    char buf[128];

    for (c = 0; c < 9; c++) { // output
        digitalWrite(col_pins[c], LOW);
        for (r = 0; r < 4; r++) { // input
            delay(1);
            sw_val = digitalRead(row_pins[r]);
            if (sw_val == 0) {
                sprintf(buf, "(%d, %d)=%d", r, c, sw_val);
                Serial.println(buf);
            }
        }
        digitalWrite(col_pins[c], HIGH);
    }
}