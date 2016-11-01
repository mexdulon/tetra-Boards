/**
  Mexdulon Control Port Source
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#include "Arduino.h"
#include "MexCtrlPort.h"

MexCtrlPort::MexCtrlPort(int portIdx)
:	MexPort(portIdx, OUTPUT),
  _clk(0),
  _clr(2),
  _nclr(3)
{

}

void MexCtrlPort::init()
{
  MexPort::init();
  digitalWrite(_pins[_clk], LOW);
  digitalWrite(_pins[_clr], LOW);
  digitalWrite(_pins[_nclr], HIGH);
}

void MexCtrlPort::clockSignal()
{
  digitalWrite(_pins[_clk], LOW);
  delayMicroseconds(10);
  digitalWrite(_pins[_clk], HIGH);
  delayMicroseconds(10);
  digitalWrite(_pins[_clk], LOW);
}

void MexCtrlPort::risingEdge()
{
  digitalWrite(_pins[_clk], LOW);
  delayMicroseconds(10);
  digitalWrite(_pins[_clk], HIGH);
}

void MexCtrlPort::fallingEdge()
{
  digitalWrite(_pins[_clk], HIGH);
  delayMicroseconds(10);
  digitalWrite(_pins[_clk], LOW);
}

void MexCtrlPort::clear()
{
  digitalWrite(_pins[_clr], HIGH);
  digitalWrite(_pins[_nclr], LOW);
  delayMicroseconds(10);
  digitalWrite(_pins[_clr], LOW);
  digitalWrite(_pins[_nclr], HIGH);
}
