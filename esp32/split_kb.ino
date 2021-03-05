/*
    key scan flow:
      1. loop row, col
      2. r,c -> keymaps[][r][c] -> qmk keycode -> blekb keycode


*/
#include <stdint.h>

#include <M5Stack.h>

// keyboard
#include "keysw.h"

//http://kats-eye.net/info/2018/11/07/mcp23017-esp/
#define MCP23017_ADDR_L           0x20     //0x20 & 0x07. MCP23017のアドレス　A2,A1,A0=0,0,0
#define MCP23017_ADDR_R           0x21     //0x20 & 0x07. MCP23017のアドレス　A2,A1,A1=0,0,1
// GPIO A
#define MCP23017_IODIR_A_ADR     0x00
#define MCP23017_GPPU_A_ADR      0x0C
#define MCP23017_GPIO_A_ADR      0x12
// GPIO B
#define MCP23017_IODIR_B_ADR     0x01
#define MCP23017_GPPU_B_ADR      0x0D
#define MCP23017_GPIO_B_ADR      0x13

#define DOES_USE_I2C            1
#define IS_ESP32                0
#define IS_M5_STACK_CORE        1
#define IS_ATOM_ECHO            2
#define BOARD   IS_ATOM_ECHO

BleKeyboardJP bleKeyboard("skb81");
extern int col_pins[];
extern int row_pins[];
extern const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS];
char buf[128];

 //http://kats-eye.net/info/2018/11/07/mcp23017-esp/
void i2c_write_reg(byte dvc_adrs, uint8_t reg, uint8_t value)
{
    //Serial.println("ic2_write_reg()");
    //Serial.println(reg);
    //Serial.println(value);
    Wire.beginTransmission(dvc_adrs);             // デバイス指定、通信開始
    Wire.write(reg);                     // レジスタ指定
    Wire.write(value);                 // データ書込
    byte ret = Wire.endTransmission();                       // 送信完了
    //if(0==ret) {
    //    Serial.println("i2c write reg successed");
    //} else {
    //    Serial.println("i2c write reg failed");
    //}
}

// 指定レジスタからデータ読み出し
uint8_t i2c_read_reg(int32_t dvc_adrs, uint8_t reg)
{
    Wire.beginTransmission(dvc_adrs);             // 送信処理開始
    Wire.write(reg);                              // レジスタ指定
    byte ret = Wire.endTransmission(false);                  // 送信完了(コネクション維持)
    //if(0==ret) {
    //    Serial.println("i2c read reg successed");
    //} else {
    //    Serial.println("i2c read reg failed");
    //}
    Wire.requestFrom(dvc_adrs , 1);               // 1byteデータに要求

    if (!Wire.available()){
        Serial.println("no date");
        return -1;            // データ有無判定
    }
    return (Wire.read());                         // 1byteデータ
}

/**
  @brief To set only r th bit LOW or HIGH. (read, modify, and write)
*/
uint8_t i2c_digitalWrite(uint8_t r, uint8_t val)
{
    val &= 0x1; // LOW or HIGH

    uint8_t cur_val;

    // left hand
    cur_val = 0xFF; //i2c_read_reg(MCP23017_ADDR_L, MCP23017_GPIO_B_ADR);
    i2c_write_reg(
        MCP23017_ADDR_L, 
        MCP23017_GPIO_B_ADR, 
        (cur_val & ~(1 << r)) | (val << r));

    // right hand
    cur_val = 0xFF; //i2c_read_reg(MCP23017_ADDR_R, MCP23017_GPIO_B_ADR);
    i2c_write_reg(
        MCP23017_ADDR_R, 
        MCP23017_GPIO_B_ADR, 
        (cur_val & ~(1 << r)) | (val << r));
}

uint8_t i2c_digitalRead(uint8_t c)
{
    uint8_t val;

    if(c < 6) {
        // left hand
        val = i2c_read_reg(MCP23017_ADDR_L, MCP23017_GPIO_A_ADR);
    } else if(c < (6 + 8)) {
        // right hand
        val = i2c_read_reg(MCP23017_ADDR_R, MCP23017_GPIO_A_ADR);
        c -= 6;
    } else { // c==14
        // right hand
        val = i2c_read_reg(MCP23017_ADDR_R, MCP23017_GPIO_B_ADR);
        c = 7; // GPIO_B[7]
    }

    //sprintf(buf, "I2C read: c=%d, val=0x%x, sw=%d,",
    //    c, val, (val>>c) &0x1);
    //Serial.print(buf);
    //Serial.println(val, BIN);

    return (val >> c) & 0x1;
}

void print_keymap(void)
{
    int r, c;
    for(c=0; c < MATRIX_COLS; c++) {
        for(r=0; r < MATRIX_ROWS; r++){
            sprintf(buf, "(%d, %d)=0x%02x,",
                r, c, keymaps[0][r][c]);
            Serial.println(buf);
        }
    }
}

//
void setup(void)
{

#if DOES_USE_I2C==0
    int r, c;

    Serial.println("use parallel gpio");

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

#else /* DOES_USE_I2C */

    Serial.println("use I2C");

#if BOARD == IS_ESP32
    Serial.println("ESP32 Devkit");
    // I2C
    //Wire.begin();//Wire.begin(SDA, SCL)
    //https://asukiaaa.blogspot.com/2020/03/arduinoi2c.html
    // esp32
    Wire.begin(14, 13);//Wire.begin(SDA, SCL)
    pinMode(13, INPUT);
    pinMode(14, INPUT);
#elif BOARD == IS_ATOM_ECHO
    Serial.println("ATOM ECHO");
    // pico, M5 Atom Echo
    // https://docs.m5stack.com/#/en/core/atom_lite
    // https://wiki.seeedstudio.com/Grove_System/
    // max of serial speed is 115200 bps.
    Wire.begin(26, 32);//Wire.begin(SDA, SCL), yello=SCL, white=SDA
    pinMode(26, INPUT);
    pinMode(32, INPUT);
#elif BOARD == IS_M5_STACK_CORE
    Serial.println("M5Stack Core");
    //m5 stack core
    Wire.begin(21, 22);//Wire.begin(SDA, SCL)
    pinMode(21, INPUT);
    pinMode(22, INPUT);
#endif /* BOARD */

    // Wire(I2C)
    Wire.setClock(100000);// 100kbits/sec
    //// left hand
    i2c_write_reg(MCP23017_ADDR_L, MCP23017_IODIR_A_ADR, 0xFF);     // DVC00 I/O-PortA 入力設定, col
    i2c_write_reg(MCP23017_ADDR_L, MCP23017_GPPU_A_ADR, 0xFF);     // DVC00 I/O-PortA 入力pullup設定
    i2c_write_reg(MCP23017_ADDR_L, MCP23017_IODIR_B_ADR, 0x00);     // DVC00 I/O-PortB 出力設定, row
    i2c_write_reg(MCP23017_ADDR_L, MCP23017_GPIO_B_ADR, 0xFF);     // DVC00 I/O-PortB all High
    //// right hand
    i2c_write_reg(MCP23017_ADDR_R, MCP23017_IODIR_A_ADR, 0xFF);     // DVC00 I/O-PortA 入力設定, col
    i2c_write_reg(MCP23017_ADDR_R, MCP23017_GPPU_A_ADR, 0xFF);     // DVC00 I/O-PortA 入力pullup設定
    i2c_write_reg(MCP23017_ADDR_R, MCP23017_IODIR_B_ADR, 0x80);     // DVC00 I/O-PortB 出力設定, row. but GPB7 is col_8 and input.
    i2c_write_reg(MCP23017_ADDR_R, MCP23017_GPPU_B_ADR, 0x80);     // DVC00 I/O-PortB GPB7 入力pullup設定
    i2c_write_reg(MCP23017_ADDR_R, MCP23017_GPIO_B_ADR, 0x7F);     // DVC00 I/O-PortB all High without GPB7

#endif /* DOES_USE_I2C */

    // serial for debug
    Serial.begin(115200);
    Serial.println("start serial.");
    print_keymap();

    // ble
    bleKeyboard.begin();
    Serial.println(bleKeyboard.isConnected());
    bleKeyboard.releaseAll();

    // check
    loop_find_I2C_device();

    //
    while(!bleKeyboard.isConnected()) {
        Serial.println("waiting for connecting to BLE.");
        delay(1000);
    }
    Serial.println("successfully connecting to BLE.");
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
    //loop_test_keycode();
    //loop_parallel();
    loop_I2C_read();
    //loop_find_I2C_device();
    //loop_test_I2C();
}

void loop_test_keycode(void)
{
#if 0
    int i;
    if (bleKeyboard.isConnected()) {
        for(i=0x20; i <= 0x7e; i++) {
            sprintf(buf, "%d, '%c', 0x%2x",
                i, i, _asciimap[i]);
            Serial.println(buf);
            bleKeyboard.write(_asciimap[i]); // keycode < 128 はascii code, それ以上は特別対応される
            delay(1000);
        }
        while(1) {
          delay(3000);
        };
    }
#endif
}

void loop_parallel(void)
{
    static uint16_t prev_pressed_keycode = 0;
    static uint32_t prev_t = millis();
    static uint8_t prior_key = 0;

    if (bleKeyboard.isConnected()) {
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
                        ret = bleKeyboard.press_raw(keycode); // keycode < 128 はascii code, それ以上は特別対応される
                    } else {
                        if(cur_t - prev_t > KEY_INTERVAL_MIN_MS) {
                            //keycode = prior_key++;
                            ret = bleKeyboard.write_raw(keycode); // keycode < 128 はascii code, それ以上は特別対応される
                            prev_t = cur_t;
                        }
                    }
                    prev_pressed_keycode = keycode;

                    sprintf(buf, "(%d, %d)=%d,0x%02x,'%c', %d",
                        r, c, sw_val, keycode, (char)(keycode & 0xFF), (int)ret);
                    Serial.println(buf);
                } else {
                    if(is_modifier(keycode)) {
                        bleKeyboard.release_raw(keycode); // keycode < 128 はascii code, それ以上は特別対応される
                    }
                }
            } // r
            digitalWrite(col_pins[c], HIGH);
        } // c
    }
}

void loop_I2C_read(void) 
{
    if (! bleKeyboard.isConnected())
        return;

    static uint16_t prev_pressed_keycode = 0;
    static uint32_t last_pressed_t = millis();
    static uint32_t cnt_same_key_pressed = 0;

    int c, r;
    uint32_t cur_t = millis();
    int normal_key_was_pressed = 0;

    // 所定時間キー入力がなかったらリセット
    //if(cur_t - last_pressed_t > KEY_INTERVAL_MIN_MS) {
    //    prev_pressed_keycode = 0;
    //}

    for (r = 0; r < MATRIX_ROWS; r++) { // output
        i2c_digitalWrite(r, LOW);
        for (c = 0; c < MATRIX_COLS; c++) { // input
            delay(KEY_SCAN_WAIT_MS);
            int sw_val = i2c_digitalRead(c);
            uint16_t keycode = keymaps[0][r][c];
            size_t ret;

            if (0 == sw_val) { // sw is pushed
                if(is_modifier(keycode)) {
                    ret = bleKeyboard.press_raw(keycode);
                } else {
                    sprintf(buf, "pre : %d, %d, %d, %d",
                        keycode, 
                        prev_pressed_keycode, 
                        cnt_same_key_pressed,
                        cur_t - last_pressed_t );
                    Serial.println(buf);
                    if(keycode==prev_pressed_keycode) {
                        // same key was pressed
                        int interval_min;
                        // KEY_INTERVAL_MIN_MS > KEY_INTERVAL_SEQ_MIN_MS
                        // 最初は長めに待つ
                        if(cnt_same_key_pressed <= 1){
                            interval_min = KEY_INTERVAL_MIN_MS;
                        } else {
                            interval_min = KEY_INTERVAL_SEQ_MIN_MS;
                        }

                        // interval_min より長い時間が経過していたらkey inputを受け入れる
                        if(cur_t - last_pressed_t > interval_min) {
                            ret = bleKeyboard.write_raw(keycode);
                            cnt_same_key_pressed += 1;
                            last_pressed_t = cur_t;
                            normal_key_was_pressed = 1;
                            prev_pressed_keycode = keycode;
                            Serial.println("same key pressed.");
                        }
                        return;
                    } else {
                        // different key was pressed
                        ret = bleKeyboard.write_raw(keycode);
                        cnt_same_key_pressed = 1;
                        last_pressed_t = cur_t;
                        normal_key_was_pressed = 1;
                        prev_pressed_keycode = keycode;
                        Serial.println("diff key pressed.");
                        return;
                    }
                    //sprintf(buf, "post: %d, %d, %d, %d",
                    //    keycode, 
                    //    prev_pressed_keycode, 
                    //    cnt_same_key_pressed,
                    //    cur_t - last_pressed_t );
                    //Serial.println(buf);
                    if(normal_key_was_pressed) {
                        return;
                    }
                }
            } else {
                if(is_modifier(keycode)) {
                    bleKeyboard.release_raw(keycode);
                }
            }

        } // c
        i2c_digitalWrite(r, HIGH);
    } // r

    //何もキー入力されなかったら
    if(!normal_key_was_pressed) {
        cnt_same_key_pressed = 0;
        prev_pressed_keycode = 0;
        return;
    }
}

// find i2c device
void loop_find_I2C_device()
{
  byte error, address;
  int nDevices;

  Serial.println("Scanning...");

  nDevices = 0;
  for(address = 0; address < 127; address++ ) 
  {
    // The i2c_scanner uses the return value of
    // the Write.endTransmisstion to see if
    // a device did acknowledge to the address.
    Wire.beginTransmission(address);
    error = Wire.endTransmission();

    if (error == 0)
    {
      Serial.print("I2C device found at address 0x");
      if (address<16) 
        Serial.print("0");
      Serial.print(address,HEX);
      Serial.println("  !");

      nDevices++;
    }
    else if (error==4) 
    {
      Serial.print("Unknown error at address 0x");
      if (address<16) 
        Serial.print("0");
      Serial.println(address,HEX);
    }    
  }
  if (nDevices == 0)
    Serial.println("No I2C devices found\n");
  else
    Serial.println("done\n");

  delay(5000);           // wait 5 seconds for next scan
}

void loop_test_I2C(void)
{
    Serial.println("\nloop start");

    i2c_write_reg(MCP23017_ADDR_L, MCP23017_GPIO_B_ADR, 0x0F);
    uint8_t val = i2c_read_reg(MCP23017_ADDR_L, MCP23017_GPIO_A_ADR);
    Serial.println(val, HEX);
    //val = i2c_read_reg(MCP23017_ADDR_L, MCP23017_GPIO_B_ADR);
    //Serial.println(val, HEX);
    delay(10);           // wait 5 seconds for next scan

    i2c_write_reg(MCP23017_ADDR_L, MCP23017_GPIO_B_ADR, 0xF0);
    val = i2c_read_reg(MCP23017_ADDR_L, MCP23017_GPIO_A_ADR);
    Serial.println(val, HEX);
    //val = i2c_read_reg(MCP23017_ADDR_L, MCP23017_GPIO_B_ADR);
    //Serial.println(val, HEX);
    delay(10);           // wait 5 seconds for next scan
}