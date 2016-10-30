/**
  Mexdulon Port Source
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#include "Arduino.h"
#include "MexPort.h"

MexPort::MexPort(int portIdx, uint8_t pin_mode)
:	_pinMode(pin_mode)
{
	if(portIdx == MEX_PORT_A) {
		_pins[0] = A0;
		_pins[1] = A1;
		_pins[2] = A2;
		_pins[3] = A3;
	} else if(portIdx == MEX_PORT_B) {
		_pins[0] = 2;
		_pins[1] = 3;
		_pins[2] = 4;
		_pins[3] = 5;
	} else if(portIdx == MEX_PORT_C) {
		_pins[0] = 7;
		_pins[1] = 8;
		_pins[2] = 12;
		_pins[3] = 13;
	} else { // portIdx == MEX_PORT_D
		_pins[0] = 6;
		_pins[1] = 9;
		_pins[2] = 10;
		_pins[3] = 11;
	}
}

void MexPort::init()
{
	for(uint8_t i = 0; i < BITS; ++i) {
		pinMode(_pins[i], _pinMode);
		_pinStates[i] = LOW;
	}
}

uint8_t MexPort::getPin(uint8_t index) const
{
	if(index >= 0 && index < BITS) {
		return _pins[index];
	}
	return 0;
}

uint8_t MexPort::getPinState(uint8_t index) const
{
	if(index >= 0 && index < BITS) {
		return _pinStates[index];
	}
	return 0;
}

/*
void MexPort::setPin(uint8_t index, uint8_t val)
{
	if(index > 0 && index < BITS) {
		_pins[index] = val;
	}
}*/

void MexPort::setValue(uint8_t val)
{
	for(int i = 0; i < BITS; ++i) {
		setPinState(i, (val >> i) & 0x1);
	}
}

void MexPort::setPinState(uint8_t index, uint8_t val)
{
	if(index >= 0 && index < BITS) {
		_pinStates[index] = val;
	}
}

void MexPort::writeAnalog(uint8_t index, uint8_t val)
{
	if(index >= 0 && index < BITS) {
		analogWrite(_pins[index], val);
	}
}

void MexPort::togglePinState(uint8_t index)
{
	if(index >= 0 && index < BITS) {
		if(_pinStates[index] == LOW) {
			_pinStates[index] = HIGH;
		} else {
			_pinStates[index] = LOW;
		}
	}
}

void MexPort::update()
{
	if(_pinMode == OUTPUT) {
		for(uint8_t i = 0; i < BITS; ++i) {
			digitalWrite(_pins[i], _pinStates[i]);
		}
	} else {
		for(uint8_t i = 0; i < BITS; ++i) {
			_pinStates[i] = digitalRead(_pins[i]);
		}
	}
}
