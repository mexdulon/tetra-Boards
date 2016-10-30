/**
  Mexdulon RGB Source
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/

#include "MexRGB.h"

MexRGB::MexRGB(int port)
: MexOutput(port),
  _color(0)
{

}

void MexRGB::update()
{
  if(_color == 0) {
    MexOutput::update();
  } else {
    _port.writeAnalog(0, (_color & 0xFF0000) >> 16);  // red
    _port.writeAnalog(1, (_color & 0x00FF00));        // green
    _port.writeAnalog(2, (_color & 0x0000FF) << 16);  // blue
  }
}

void MexRGB::resetColor()
{
  _color = 0;
}

void MexRGB::setColor(uint32_t color)
{
  _color = color;
}

void MexRGB::setColor(uint8_t r, uint8_t g, uint8_t b)
{
  setColor(r << 16 | g << 8 | b);
}
