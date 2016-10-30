/**
  Mexdulon RGB Header
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#ifndef MEX_RGB_DEFINED
#define MEX_RGB_DEFINED

#include "Arduino.h"
#include "MexOutput.h"

#define MEX_COLOR_BLACK     0x0
#define MEX_COLOR_RED       0x1
#define MEX_COLOR_GREEN     0x2
#define MEX_COLOR_YELLOW    0x3
#define MEX_COLOR_BLUE      0x4
#define MEX_COLOR_MAGENTA   0x5
#define MEX_COLOR_CYAN      0x6
#define MEX_COLOR_WHITE     0x7

class MexRGB : public MexOutput
{
public:
  MexRGB(int port);

  virtual void update();

  void resetColor();
  void setColor(uint32_t color);
  void setColor(uint8_t r, uint8_t g, uint8_t b);

private:
  uint32_t _color;
};

#endif // MEX_RGB_DEFINED
