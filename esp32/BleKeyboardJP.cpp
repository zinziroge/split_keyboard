
#include "BleKeyboardJP.h"

BleKeyboardJP::BleKeyboardJP(std::string deviceName, std::string deviceManufacturer, uint8_t batteryLevel) : hid(0)
{
  this->deviceName = deviceName;
  this->deviceManufacturer = deviceManufacturer;
  this->batteryLevel = batteryLevel;
  this->connectionStatus = new BleConnectionStatus();
}

size_t BleKeyboardJP::write_raw(uint8_t c)
{
	uint8_t p = press_raw(c);  // Keydown
	release_raw(c);            // Keyup
	return p;              // just return the result of press() since release() almost always returns 1
}

size_t BleKeyboardJP::press_raw(uint8_t k)
{
	uint8_t i;

	if (k >= 0xE0) {	// it's a modifier key
	}else if (k >= 0xB0) {	// it's a special key
    }else{ // it's a printing key
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

size_t BleKeyboardJP::release_raw(uint8_t k)
{
	uint8_t i;

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