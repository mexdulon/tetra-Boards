/**
  Mexdulon RGB Header
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#ifndef MEX_RGB_DEFINED
#define MEX_RGB_DEFINED

#include "Arduino.h"
#include "MexOutput.h"

#define MEX_COLOR_BLACK     0
#define MEX_COLOR_RED       1
#define MEX_COLOR_GREEN     2
#define MEX_COLOR_YELLOW    3
#define MEX_COLOR_BLUE      4
#define MEX_COLOR_MAGENTA   5
#define MEX_COLOR_CYAN      6
#define MEX_COLOR_WHITE     7
#define MEX_COUNT_COLORS    8

class MexRGB : public MexOutput
{
public:
  MexRGB(int port);

  virtual void update();

  void resetColor();
  void setColor(int color);
  void setRGB(uint8_t r, uint8_t g, uint8_t b);

private:
  uint8_t _red;
  uint8_t _green;
  uint8_t _blue;
  uint8_t _timer;
};

#endif // MEX_RGB_DEFINED
