/**
  Mexdulon Buzzer Header
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#ifndef MEX_BUZZER_DEFINED
#define MEX_BUZZER_DEFINED

#include "Arduino.h"
#include "MexOutput.h"
#include "pitches.h"

class MexBuzzer : public MexOutput
{
public:
  MexBuzzer(int port, uint8_t pinIdx);

  virtual void update();

  void playTone(unsigned int freq);
  void playTone(unsigned int freq, unsigned long duration);
  void pause();

private:
  uint8_t _pinIdx;
};

#endif // MEX_BUZZER_DEFINED
