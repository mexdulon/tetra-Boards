/**
  Mexdulon Input Header
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#ifndef MEX_INPUT_DEFINED
#define MEX_INPUT_DEFINED

#include "Arduino.h"
#include "MexPort.h"

class MexInput
{
public:
  MexInput(int port);

  void init();
  void update();

  uint8_t getState(uint8_t idx) const;
  int getValue() const;

private:
  MexPort _port;
};

#endif // MEX_INPUT_DEFINED
