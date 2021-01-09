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

#define DOES_USE_I2C            0
#define IS_ESP32                0
#define IS_M5_STACK_CORE        1
#define IS_ATOM_ECHO            2
#define BOARD   IS_ESP32

// ascii code -> blekey code(US)
// 順番はasciiコード順、コードは
// https://www.usb.org/sites/default/files/documents/hut1_12v2.pdf の keyboard/keypad のコード
#if 0
#define SHIFT 0x80
const uint8_t _asciimap[128] =
{
	0x00,             // NUL
	0x00,             // SOH
	0x00,             // STX
	0x00,             // ETX
	0x00,             // EOT
	0x00,             // ENQ
	0x00,             // ACK
	0x00,             // BEL
	0x2a,			// BS	Backspace
	0x2b,			// TAB	Tab
	0x28,			// LF	Enter
	0x00,             // VT
	0x00,             // FF
	0x00,             // CR
	0x00,             // SO
	0x00,             // SI
	0x00,             // DEL
	0x00,             // DC1
	0x00,             // DC2
	0x00,             // DC3
	0x00,             // DC4
	0x00,             // NAK
	0x00,             // SYN
	0x00,             // ETB
	0x00,             // CAN
	0x00,             // EM
	0x00,             // SUB
	0x00,             // ESC
	0x00,             // FS
	0x00,             // GS
	0x00,             // RS
	0x00,             // US

	0x2c,		   //  ' '
	0x1e|SHIFT,	   // ! (1)
	0x1f|SHIFT,    // " (2), 0x34|SHIFT
	0x20|SHIFT,    // # (3)
	0x21|SHIFT,    // $ (4)
	0x22|SHIFT,    // % (5)
	0x23|SHIFT,    // & (6), 0x24|SHIFT
	0x24|SHIFT,    // ' (7), 0x34
	0x25|SHIFT,    // ( (8), 0x26|SHIFT
	0x26|SHIFT,    // ) (9), 0x27|SHIFT
	0x25|SHIFT,    // *
	0x33|SHIFT,    // +
	0x36,          // ,
	0x2d,          // -
	0x37,          // .
	0x38,          // /
	0x27,          // 0
	0x1e,          // 1
	0x1f,          // 2
	0x20,          // 3
	0x21,          // 4
	0x22,          // 5
	0x23,          // 6
	0x24,          // 7
	0x25,          // 8
	0x26,          // 9
	0x33|SHIFT,      // :
	0x33,          // ;
	0x36|SHIFT,      // <
	0x2e,          // =
	0x37|SHIFT,     // >(.), 0x37|SHIFT
	0x38|SHIFT,      // ?
	0x1f|SHIFT,      // @ (2)
	0x04|SHIFT,      // A
	0x05|SHIFT,      // B
	0x06|SHIFT,      // C
	0x07|SHIFT,      // D
	0x08|SHIFT,      // E
	0x09|SHIFT,      // F
	0x0a|SHIFT,      // G
	0x0b|SHIFT,      // H
	0x0c|SHIFT,      // I
	0x0d|SHIFT,      // J
	0x0e|SHIFT,      // K
	0x0f|SHIFT,      // L
	0x10|SHIFT,      // M
	0x11|SHIFT,      // N
	0x12|SHIFT,      // O
	0x13|SHIFT,      // P
	0x14|SHIFT,      // Q
	0x15|SHIFT,      // R
	0x16|SHIFT,      // S
	0x17|SHIFT,      // T
	0x18|SHIFT,      // U
	0x19|SHIFT,      // V
	0x1a|SHIFT,      // W
	0x1b|SHIFT,      // X
	0x1c|SHIFT,      // Y
	0x1d|SHIFT,      // Z
	0x2f,          // [
	0x31,          // bslash
	0x30,          // ]
	0x23|SHIFT,    // ^
	0x2d|SHIFT,    // _
	0x35,          // `
	0x04,          // a
	0x05,          // b
	0x06,          // c
	0x07,          // d
	0x08,          // e
	0x09,          // f
	0x0a,          // g
	0x0b,          // h
	0x0c,          // i
	0x0d,          // j
	0x0e,          // k
	0x0f,          // l
	0x10,          // m
	0x11,          // n
	0x12,          // o
	0x13,          // p
	0x14,          // q
	0x15,          // r
	0x16,          // s
	0x17,          // t
	0x18,          // u
	0x19,          // v
	0x1a,          // w
	0x1b,          // x
	0x1c,          // y
	0x1d,          // z
	0x2f|SHIFT,    // {
	0x31|SHIFT,    // |
	0x30|SHIFT,    // }
	0x35|SHIFT,    // ~
	0				// DEL
};
#else
extern const uint8_t _asciimap[128];
#endif

#if 0 
class BleKeyboardJP : public BleKeyboard
{
public:
  size_t press(uint8_t k);
  size_t write(uint8_t c);
  size_t release(uint8_t k);
};

size_t BleKeyboardJP::press(uint8_t k)
{
	uint8_t i;
	if (k >= 160) {			// 0xA0, it's a non-printing key (not a modifier)
		k = k - 136;
	} else if (k >= 144) { // 0x90, int1~9
		k = k - 9;
	} else if (k >= 128) {	// 0x80, it's a modifier key
		_keyReport.modifiers |= (1<<(k-128));
		k = 0;
	} else {				// k < 0x80, it's a printing key
		k = pgm_read_byte(_asciimap + k);
		if (!k) {
			setWriteError();
			return 0;
		}
		if (k & 0x80) {						// it's a capital letter or other character reached with shift
			_keyReport.modifiers |= 0x02;	// the left shift modifier
			k &= 0x7F;
		}
	}

	// Add k to the key report only if it's not already present
	// and if there is an empty slot.
	if (_keyReport.keys[0] != k && _keyReport.keys[1] != k &&
		_keyReport.keys[2] != k && _keyReport.keys[3] != k &&
		_keyReport.keys[4] != k && _keyReport.keys[5] != k) {

		for (i=0; i<6; i++) {
			if (_keyReport.keys[i] == 0x00) {
				_keyReport.keys[i] = k;
				break;
			}
		}
		if (i == 6) {
			setWriteError();
			return 0;
		}
	}
	sendReport(&_keyReport);
	return 1;
}

size_t BleKeyboardJP::release(uint8_t k)
{
	uint8_t i;
	if (k >= 160) {			// it's a non-printing key (not a modifier)
		k = k - 136;
	} else if (k >= 144) { // int1~9
		k = k - 9;
	} else if (k >= 128) {	// it's a modifier key
		_keyReport.modifiers &= ~(1<<(k-128));
		k = 0;
	} else {				// it's a printing key
		k = pgm_read_byte(_asciimap + k);
		if (!k) {
			return 0;
		}
		if (k & 0x80) {							// it's a capital letter or other character reached with shift
			_keyReport.modifiers &= ~(0x02);	// the left shift modifier
			k &= 0x7F;
		}
	}

	// Test the key report to see if k is present.  Clear it if it exists.
	// Check all positions in case the key is present more than once (which it shouldn't be)
	for (i=0; i<6; i++) {
		if (0 != k && _keyReport.keys[i] == k) {
			_keyReport.keys[i] = 0x00;
		}
	}

	sendReport(&_keyReport);
	return 1;
}
//
#endif

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

#if DOSE_USE_I2C
#if BOARD == IS_ESP32
    // I2C
    //Wire.begin();//Wire.begin(SDA, SCL)
    //https://asukiaaa.blogspot.com/2020/03/arduinoi2c.html
    // esp32
    Wire.begin(14, 13);//Wire.begin(SDA, SCL)
    pinMode(13, INPUT);
    pinMode(14, INPUT);
#elif BOARD == IS_ATOM_ECHO
    // pico, M5 Atom Echo
    //https://wiki.seeedstudio.com/Grove_System/
    Wire.begin(26, 32);//Wire.begin(SDA, SCL), yello=SCL, white=SDA
    pinMode(26, INPUT);
    pinMode(32, INPUT);
#elif BOARD == IS_M5_STACK_CORE
    //m5 stack core
    //Wire.begin(21, 22);//Wire.begin(SDA, SCL)
    //pinMode(21, INPUT);
    //pinMode(22, INPUT);
    Wire.setClock(10000);// 100kbits/sec
    i2c_write_reg(MCP23017_ADDR, MCP23017_IODIR_A_ADR, 0xFF);     // DVC00 I/O-PortA 入力設定, row
    i2c_write_reg(MCP23017_ADDR, MCP23017_GPPU_A_ADR, 0xFF);     // DVC00 I/O-PortA 入力ﾌﾟﾙｱｯﾌﾟ設定
    i2c_write_reg(MCP23017_ADDR, MCP23017_IODIR_B_ADR, 0x00);     // DVC00 I/O-PortB 出力設定, col
    i2c_write_reg(MCP23017_ADDR, MCP23017_GPIO_B_ADR, 0x00);     // DVC00 I/O-PortB 全OFF
#endif /* BOARD */
#endif /* DOSE_USE_I2C */
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
    loop_paralle();
    //loop_I2C_read();
    //loop_find_I2C_device();
    //loop_test_I2C();
}

void loop_test_keycode(void)
{
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
}

void loop_paralle(void)
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

void loop_I2C_read(void) 
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
void loop_find_I2C_device()
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

void loop_test_I2C(void)
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