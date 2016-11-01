/**
  Mexdulon Output Header
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#ifndef MEX_OUTPUT_DEFINED
#define MEX_OUTPUT_DEFINED

#include "Arduino.h"
#include "MexPort.h"

class MexOutput
{
public:
  MexOutput(int port);

  void init();
  virtual void update();

  void setState(uint8_t idx, uint8_t state);
  void setValue(int val);

protected:
  MexPort _port;
};

#endif // MEX_OUTPUT_DEFINED
