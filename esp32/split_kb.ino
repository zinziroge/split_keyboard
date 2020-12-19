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

//http://kats-eye.net/info/2018/11/07/mcp23017-esp/
#define MCP23017_ADDR           0x20     //0x20 & 0x07. MCP23017のアドレス　A0,A1,A2=1,1,1
// GPIO A
#define MCP23017_IODIR_A_ADR     0x00
#define MCP23017_GPPU_A_ADR      0x0C
#define MCP23017_GPIO_A_ADR      0x12
// GPIO B
#define MCP23017_IODIR_B_ADR     0x01
#define MCP23017_GPPU_B_ADR      0x0D
#define MCP23017_GPIO_B_ADR      0x13

// 
BleKeyboard bleKeyboard("skb81_trainee");
extern int col_pins[];
extern int row_pins[];
extern const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS];
char buf[128];

//http://kats-eye.net/info/2018/11/07/mcp23017-esp/
void i2c_write_reg(byte dvc_adrs, uint8_t reg, uint8_t value)
{
    Serial.println("ic2_write_reg()");
    Serial.println(reg);
    Serial.println(value);
    Wire.beginTransmission(dvc_adrs);             // デバイス指定、通信開始
    Wire.write(reg);                     // レジスタ指定
    Wire.write(value);                 // データ書込
    byte ret = Wire.endTransmission();                       // 送信完了
    if(ret==0) {
        Serial.println("i2c write reg successed");
    } else {
        Serial.println("i2c write reg failed");
    }
}

// 指定レジスタからデータ読み出し
uint8_t i2c_read_reg(int32_t dvc_adrs, uint8_t reg)
{
    Wire.beginTransmission(dvc_adrs);             // 送信処理開始
    Wire.write(reg);                              // レジスタ指定
    byte ret = Wire.endTransmission(false);                  // 送信完了(コネクション維持)
    if(ret==0) {
        Serial.println("i2c read reg successed");
    } else {
        Serial.println("i2c read reg failed");
    }
    Wire.requestFrom(dvc_adrs , 1);               // 1byteデータに要求

    if (!Wire.available()){
        Serial.println("no date");
        return -1;            // データ有無判定
    }
    return (Wire.read());                         // 1byteデータ
}

uint8_t i2c_digitalWrite(uint8_t c, uint8_t val)
{
    i2c_write_reg(MCP23017_ADDR, MCP23017_GPIO_B_ADR, (val & 0x1)<<c);
}

uint8_t i2c_digitalRead(uint8_t r)
{
    uint8_t val = i2c_read_reg(MCP23017_ADDR, MCP23017_GPIO_A_ADR);
    Serial.print("I2C read: ");
    Serial.println(val);
    return val >> (r - 4);
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
    print_keymap();

    // ble
    bleKeyboard.begin();
    Serial.println(bleKeyboard.isConnected());
    //bleKeyboard.releaseAll();

    // I2C
    //Wire.begin();//Wire.begin(SDA, SCL)
    //https://asukiaaa.blogspot.com/2020/03/arduinoi2c.html
    // esp32
    //Wire.begin(14, 13);//Wire.begin(SDA, SCL)
    //pinMode(13, INPUT);
    //pinMode(14, INPUT);
    // pico, M5 Atom Echo
    //https://wiki.seeedstudio.com/Grove_System/
    Wire.begin(26, 32);//Wire.begin(SDA, SCL), yello=SCL, white=SDA
    pinMode(26, INPUT);
    pinMode(32, INPUT);
    //m5 stack core
    //Wire.begin(21, 22);//Wire.begin(SDA, SCL)
    //pinMode(21, INPUT);
    //pinMode(22, INPUT);
    Wire.setClock(10000);// 100kbits/sec
    i2c_write_reg(MCP23017_ADDR, MCP23017_IODIR_A_ADR, 0xFF);     // DVC00 I/O-PortA 入力設定, row
    i2c_write_reg(MCP23017_ADDR, MCP23017_GPPU_A_ADR, 0xFF);     // DVC00 I/O-PortA 入力ﾌﾟﾙｱｯﾌﾟ設定
    i2c_write_reg(MCP23017_ADDR, MCP23017_IODIR_B_ADR, 0x00);     // DVC00 I/O-PortB 出力設定, col
    i2c_write_reg(MCP23017_ADDR, MCP23017_GPIO_B_ADR, 0x00);     // DVC00 I/O-PortB 全OFF
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

void loop_1(void)
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

void loop_2(void) 
{
    static uint16_t prev_pressed_keycode = 0;
    static uint32_t prev_t = millis();

    if (1){
        int c, r;
        int sw_val;

        for (c = 0; c < MATRIX_COLS; c++) { // output
            i2c_digitalWrite(c, LOW);
            for (r = 0; r < MATRIX_ROWS; r++) { // input
                delay(KEY_SCAN_WAIT_MS);
                uint32_t cur_t = millis();
                sw_val = i2c_digitalRead(r);
                uint16_t keycode = keymaps[0][r][c];
                size_t ret = 0;

                if (sw_val == 0) { // sw is pushed
                    sprintf(buf, "(%d, %d)=%d,0x%02x,'%c', %d",
                        r, c, sw_val, keycode, (char)(keycode & 0xFF), (int)ret);
                    Serial.println(buf);
                }
            } // r
            i2c_digitalWrite(c, HIGH);
        } // c
    }
}

void loop_3(void)
{}

void loop_4(void) 
{
    static uint16_t prev_pressed_keycode = 0;
    static uint32_t prev_t = millis();

    if (1){
        int c, r;
        int sw_val;

        for (c = 0; c < 1; c++) { // output
            i2c_digitalWrite(c, LOW);
            for (r = 4; r < 5; r++) { // input
                delay(KEY_SCAN_WAIT_MS);
                uint32_t cur_t = millis();
                sw_val = i2c_digitalRead(r);
                uint16_t keycode = keymaps[0][r][c];
                size_t ret = 0;

                if (sw_val == 0) { // sw is pushed
                    sprintf(buf, "(%d, %d)=%d,0x%02x,'%c', %d",
                        r, c, sw_val, keycode, (char)(keycode & 0xFF), (int)ret);
                    Serial.println(buf);
                }
            } // r
            i2c_digitalWrite(c, HIGH);
        } // c
    }
}

// find i2c device
void loop_5()
{
  byte error, address;
  int nDevices;

  Serial.println("Scanning...");

  nDevices = 0;
  for(address = 1; address < 127; address++ ) 
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

void loop(void)
{
    Serial.println("\nloop start");

    i2c_write_reg(MCP23017_ADDR, MCP23017_GPIO_B_ADR, 0x0F);
    uint8_t val = i2c_read_reg(MCP23017_ADDR, MCP23017_GPIO_A_ADR);
    Serial.println(val, HEX);
    //val = i2c_read_reg(MCP23017_ADDR, MCP23017_GPIO_B_ADR);
    //Serial.println(val, HEX);
    delay(10);           // wait 5 seconds for next scan

    i2c_write_reg(MCP23017_ADDR, MCP23017_GPIO_B_ADR, 0xF0);
    val = i2c_read_reg(MCP23017_ADDR, MCP23017_GPIO_A_ADR);
    Serial.println(val, HEX);
    //val = i2c_read_reg(MCP23017_ADDR, MCP23017_GPIO_B_ADR);
    //Serial.println(val, HEX);
    delay(10);           // wait 5 seconds for next scan
}