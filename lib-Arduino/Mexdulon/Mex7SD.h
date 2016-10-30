/**
  Mexdulon 7-Segment Display Header
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#ifndef MEX_7SD_DEFINED
#define MEX_7SD_DEFINED

#include "Arduino.h"
#include "MexPort.h"

class Mex7SD
{
public:
  Mex7SD(int port1, int port2);

  void init();
  void update();

	void showCharWithIndex(int char_index);
	void showBCD(int val);
	void showBCDDigit(int val, uint8_t digit = 0);
	void showHex(int val);
	void showHexDigit(int val, uint8_t digit = 0);
	void showChar(char ch);
	void showByte(uint8_t val);
	void toggleDot();
	void showDot();
	void hideDot();

private:
  static uint8_t getCharIndex(char ch);

	static const int SEGMENTS = 8; // number of segments (7 + dot = 8)
	static const int NUM_CHARS = 16;
	static const int CHAR_OFFSET_A = 10;
	static const uint8_t DISPLAY_CHARS[NUM_CHARS][SEGMENTS];
	const int DOT_IDX;

	MexPort _port1, _port2;
};

#endif
