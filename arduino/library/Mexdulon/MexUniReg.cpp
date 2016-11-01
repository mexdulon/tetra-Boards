/**
  Mexdulon Universal Register Source
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#include "MexUniReg.h"

MexUniReg::MexUniReg(int portIn, int portMode, int portCtrl)
: _portIn(portIn),
  _portCtrl(portCtrl),
  _portMode(portMode),
  _clk(0),
  _clr(3),
  _s0(0),
  _s1(1),
  _sr(2),
  _sl(3)
{

}

void MexUniReg::init()
{
  _portIn.init();
  _portMode.init();
  _portCtrl.init();
}

void MexUniReg::update()
{
  //_portIn.update();
  //_portMode.update();
  //_portCtrl.update();
}

void MexUniReg::writeValue(uint8_t val)
{
  _portIn.setValue(val);
  _portIn.update();
  _portMode.setPinState(_s0, HIGH);
  _portMode.setPinState(_s1, HIGH);
  _portMode.update();
  _portCtrl.risingEdge();
}

void MexUniReg::shiftLeft(uint8_t one, uint8_t cnt)
{
  _portMode.setPinState(_sl, one);
  _portMode.setPinState(_s0, HIGH);
  _portMode.setPinState(_s1, LOW);
  _portMode.update();
  _portCtrl.risingEdge();
}

void MexUniReg::shiftRight(uint8_t one, uint8_t cnt)
{
  _portMode.setPinState(_sr, one);
  _portMode.setPinState(_s0, LOW);
  _portMode.setPinState(_s1, HIGH);
  _portMode.update();
  _portCtrl.risingEdge();
}
