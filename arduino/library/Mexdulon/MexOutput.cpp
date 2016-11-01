/**
  Mexdulon Output Source
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/

#include "MexOutput.h"

MexOutput::MexOutput(int port)
: _port(port, OUTPUT)
{

}

void MexOutput::init()
{
	_port.init();
}

void MexOutput::update()
{
  _port.update();
}

void MexOutput::setState(uint8_t idx, uint8_t state)
{
  _port.setPinState(idx, state);
}

void MexOutput::setValue(int val)
{
  for(int i = 0; i < MexPort::BITS; ++i) {
    _port.setPinState(i, (val >> i) & 0x1);
  }
}
