/**
  Mexdulon 7-Segment Display Source
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#include "Arduino.h"
#include "Mex7SD.h"

const uint8_t Mex7SD::DISPLAY_CHARS[Mex7SD::NUM_CHARS][Mex7SD::SEGMENTS] = {
  {HIGH, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW,  LOW}, // 0
  { LOW, HIGH, HIGH,  LOW,  LOW,  LOW,  LOW,  LOW}, // 1
  {HIGH, HIGH,  LOW, HIGH, HIGH,  LOW, HIGH,  LOW}, // 2
  {HIGH, HIGH, HIGH, HIGH,  LOW,  LOW, HIGH,  LOW}, // 3
  { LOW, HIGH, HIGH,  LOW,  LOW, HIGH, HIGH,  LOW}, // 4
  {HIGH,  LOW, HIGH, HIGH,  LOW, HIGH, HIGH,  LOW}, // 5
  {HIGH,  LOW, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW}, // 6
  {HIGH, HIGH, HIGH,  LOW,  LOW,  LOW,  LOW,  LOW}, // 7
  {HIGH, HIGH, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW}, // 8
  {HIGH, HIGH, HIGH, HIGH,  LOW, HIGH, HIGH,  LOW}, // 9
  {HIGH, HIGH, HIGH,  LOW, HIGH, HIGH, HIGH,  LOW}, // a
  { LOW,  LOW, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW}, // b
  {HIGH,  LOW,  LOW, HIGH, HIGH, HIGH,  LOW,  LOW}, // c
  { LOW, HIGH, HIGH, HIGH, HIGH,  LOW, HIGH,  LOW}, // d
  {HIGH,  LOW,  LOW, HIGH, HIGH, HIGH, HIGH,  LOW}, // e
  {HIGH,  LOW,  LOW,  LOW, HIGH, HIGH, HIGH,  LOW}  // f
};

Mex7SD::Mex7SD(int port1, int port2)
:	DOT_IDX(7),
	_port1(port1, OUTPUT),
	_port2(port2, OUTPUT)
{

}

void Mex7SD::init()
{
	_port1.init();
	_port2.init();
}

uint8_t Mex7SD::getCharIndex(char ch) {
  if(ch >= '0' && ch <= '9') {
    return ch - '0';
  } else if(ch >= 'a' && ch <= 'f') {
    return ch - 'a' + CHAR_OFFSET_A;
  } else if(ch >= 'A' && ch <= 'F') {
    return ch - 'A' + CHAR_OFFSET_A;
  }
  return 0;
}

void Mex7SD::showCharWithIndex(int char_index) {
  if(char_index >= NUM_CHARS) {
    return;
  }
  for(uint8_t i = 0; i < MexPort::BITS; ++i) {
    _port1.setPinState(i, DISPLAY_CHARS[char_index][i]);
    _port2.setPinState(i, DISPLAY_CHARS[char_index][i+MexPort::BITS]);
  }
}

void Mex7SD::showBCD(int val) {
  if(val <= 9) {
    showChar('0' + val);
  } else {
    showByte(0x00);
  }
}

void Mex7SD::showBCDDigit(int val, uint8_t digit) {
  int divisor = 1;
  for(uint8_t i = 0; i < digit; ++i) {
    divisor *= 10;
  }
  val = (val / divisor) % 10;
  showBCD(val);
}

void Mex7SD::showHex(int val) {
  val = val % 16;
  if(val <= 9) {
    showChar('0' + val);
  } else if(val <= 15) {
    showChar('a' + val - 10);
  } else {
    showByte(0x00);
  }
}

void Mex7SD::showHexDigit(int val, uint8_t digit) {
  int divisor = 1;
  for(uint8_t i = 0; i < digit; ++i) {
    divisor *= 16;
  }
  val = (val / divisor) % 16;
  showHex(val);
}

void Mex7SD::showChar(char ch) {
  showCharWithIndex(getCharIndex(ch));
}

void Mex7SD::showByte(uint8_t val) {
  for(uint8_t i = 0; i < SEGMENTS; ++i) {
  	if(i < MexPort::BITS) {
    	_port1.setPinState(i, (val >> i) & 1);
    } else {
    	_port2.setPinState(i-MexPort::BITS, (val >> i) & 1);
    }
  }
}

void Mex7SD::toggleDot() {
  _port2.togglePinState(DOT_IDX);
}

void Mex7SD::showDot() {
  _port2.setPinState(DOT_IDX, HIGH);
}

void Mex7SD::hideDot() {
  _port2.setPinState(DOT_IDX, LOW);
}

void Mex7SD::update() {
  _port1.update();
  _port2.update();
}
