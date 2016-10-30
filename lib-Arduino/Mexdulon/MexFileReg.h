/**
  Mexdulon File Register Header
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#ifndef MEX_FILE_REGISTER_DEFINED
#define MEX_FILE_REGISTER_DEFINED

#include "Arduino.h"
#include "MexPort.h"

class MexFileReg
{
public:
  MexFileReg(int portIn, int portAddr, int portMode);

  void configure(int jpWA, int jpWB, int jpRA, int jpRB);

  void init();
  //void update();

  void writeFile(uint8_t addr, uint8_t val);
  void readFile(uint8_t addr);

private:
  MexPort _portIn, _portAddr, _portMode;
  int _jpWA, _jpWB, _jpRA, _jpRB;
  int _GW, _GR;
};

#endif //MEX_FILE_REGISTER_DEFINED
