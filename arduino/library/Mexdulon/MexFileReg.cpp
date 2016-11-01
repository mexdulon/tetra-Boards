/**
  Mexdulon File Register Source
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#include "MexFileReg.h"

MexFileReg::MexFileReg(int portIn, int portAddr, int portMode)
: _portIn(portIn),
  _portAddr(portAddr),
  _portMode(portMode),
  _jpWA(0),
  _jpWB(1),
  _jpRA(0),
  _jpRB(1),
  _GW(3),
  _GR(1)
{

}

void MexFileReg::init()
{
	_portIn.init();
	_portAddr.init();
	_portMode.init();
}

void MexFileReg::configure(int jpWA, int jpWB, int jpRA, int jpRB)
{
  // Addr Port 2 (pin 3) = JP 2-3
  if(jpWA == 2 || jpWA == 3) {
    _jpWA = 2;
  } else {
    _jpWA = 0;
  }
  // Addr Port 3 (pin 4) = JP 2-3
  if(jpWB == 3 || jpWB == 4) {
    _jpWB = 3;
  } else {
    _jpWB = 1;
  }
  // Addr Port 2 (pin 3) = JP 2-3
  if(jpRA == 2 || jpRA == 3) {
    _jpRA = 2;
  } else {
    _jpRA = 0;
  }
  // Addr Port 3 (pin 4) = JP 2-3
  if(jpWB == 3 || jpWB == 4) {
    _jpRB = 3;
  } else {
    _jpRB = 1;
  }
}

/*void MexFileReg::update()
{
  _portAddr.update();
  _portIn.update();
  _portMode.update();
}*/

void MexFileReg::writeFile(uint8_t addr, uint8_t val)
{
  if(addr == 0) {
    _portAddr.setPinState(_jpWA, 0);
    _portAddr.setPinState(_jpWB, 0);
  } else if(addr == 1) {
    _portAddr.setPinState(_jpWA, 1);
    _portAddr.setPinState(_jpWB, 0);
  } else if(addr == 2) {
    _portAddr.setPinState(_jpWA, 0);
    _portAddr.setPinState(_jpWB, 1);
  } else {
    _portAddr.setPinState(_jpWA, 1);
    _portAddr.setPinState(_jpWB, 1);
  }
  _portAddr.update();
  _portIn.setValue(val);
  _portIn.update();
  _portMode.setPinState(_GW, LOW);
  _portMode.update();
}

void MexFileReg::readFile(uint8_t addr)
{
  if(addr == 0) {
    _portAddr.setPinState(_jpRA, 0);
    _portAddr.setPinState(_jpRB, 0);
  } else if(addr == 1) {
    _portAddr.setPinState(_jpRA, 1);
    _portAddr.setPinState(_jpRB, 0);
  } else if(addr == 2) {
    _portAddr.setPinState(_jpRA, 0);
    _portAddr.setPinState(_jpRB, 1);
  } else {
    _portAddr.setPinState(_jpRA, 1);
    _portAddr.setPinState(_jpRB, 1);
  }
  _portAddr.update();
  _portMode.setPinState(_GR, LOW);
  _portMode.update();
}
