/**
  Mexdulon Universal Register Header
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#ifndef MEX_UNIVERSAL_REGISTER_DEFINED
#define MEX_UNIVERSAL_REGISTER_DEFINED

#include "Arduino.h"
#include "MexPort.h"
#include "MexCtrlPort.h"

class MexUniReg
{
public:
  MexUniReg(int portIn, int portMode, int portCtrl);

  virtual void init();
  virtual void update();

  void writeValue(uint8_t val);
  void shiftLeft(uint8_t one = 0, uint8_t cnt = 1);
  void shiftRight(uint8_t one = 0, uint8_t cnt = 1);

private:
  MexPort _portIn, _portMode;
  MexCtrlPort _portCtrl;
  int _clk, _clr;
  int _s0, _s1, _sr, _sl;
};

#endif //MEX_UNIVERSAL_REGISTER_DEFINED
