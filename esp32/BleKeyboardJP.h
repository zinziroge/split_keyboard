#ifndef ESP32_BLE_KEYBOARD_JP_H
#define ESP32_BLE_KEYBOARD_JP_H

#include "BleKeyboard.h"

class BleKeyboardJP : public BleKeyboard
{
private:
  BleConnectionStatus* connectionStatus;
  BLEHIDDevice* hid;
  BLECharacteristic* inputKeyboard;
  BLECharacteristic* outputKeyboard;
  //BLECharacteristic* inputMediaKeys;
  KeyReport _keyReport;
  //MediaKeyReport _mediaKeyReport;
  //static void taskServer(void* pvParameter);
public:
  BleKeyboardJP(std::string deviceName = "ESP32 BLE Keyboard", std::string deviceManufacturer = "Espressif", uint8_t batteryLevel = 100);
  size_t write_raw(uint8_t c);
  size_t press_raw(uint8_t c);
  size_t release_raw(uint8_t c);
};

#endif /* ESP32_BLE_KEYBOARD_JP_H */
