/**
  Mexdulon Input Source
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/

#include "MexInput.h"

MexInput::MexInput(int port)
: _port(port, INPUT)
{

}

void MexInput::init()
{
	_port.init();
}

void MexInput::update()
{
  _port.update();
}

uint8_t MexInput::getState(uint8_t idx) const
{
  return _port.getPinState(idx);
}

int MexInput::getValue() const
{
  int value = 0;
  for(int i = 0; i < MexPort::BITS; ++i) {
    value |= (_port.getPinState(i) & 0x1) << i;
  }
  return value;
}
