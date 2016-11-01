/**
  Mexdulon RGB Source
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/

#include "MexRGB.h"

MexRGB::MexRGB(int port)
: MexOutput(port),
  _red(0),
  _green(0),
  _blue(0),
  _timer(0)
{

}

void MexRGB::update()
{
  _port.setPinState(0, _red   >= _timer ? 1 : 0);
  _port.setPinState(1, _green >= _timer ? 1 : 0);
  _port.setPinState(2, _blue  >= _timer ? 1 : 0);

  MexOutput::update();
  _timer++;
}

void MexRGB::resetColor()
{
  _red = 0;
  _green = 0;
  _blue = 0;
}

void MexRGB::setColor(int color)
{
  switch(color) {
    case MEX_COLOR_RED:
      _red = 255;
      _green = 0;
      _blue = 0;
      break;
    case MEX_COLOR_GREEN:
      _red = 0;
      _green = 255;
      _blue = 0;
      break;
    case MEX_COLOR_YELLOW:
      _red = 255;
      _green = 255;
      _blue = 0;
      break;
    case MEX_COLOR_BLUE:
      _red = 0;
      _green = 0;
      _blue = 255;
      break;
    case MEX_COLOR_MAGENTA:
      _red = 255;
      _green = 0;
      _blue = 255;
      break;
    case MEX_COLOR_CYAN:
      _red = 0;
      _green = 255;
      _blue = 255;
      break;
    case MEX_COLOR_WHITE:
      _red = 255;
      _green = 255;
      _blue = 255;
      break;
    case MEX_COLOR_BLACK:
    default:
      _red = 0;
      _green = 0;
      _blue = 0;
      break;
  }
}

void MexRGB::setRGB(uint8_t r, uint8_t g, uint8_t b)
{
  _red = r;
  _green = g;
  _blue = b;
}
