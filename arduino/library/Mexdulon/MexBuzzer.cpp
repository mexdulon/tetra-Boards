#include "MexBuzzer.h"

MexBuzzer::MexBuzzer(int port, uint8_t pinIdx)
: MexOutput(port),
  _pinIdx(pinIdx)
{

}

void MexBuzzer::update()
{

}

void MexBuzzer::playTone(unsigned int freq)
{
  tone(_port.getPin(_pinIdx), freq);
}

void MexBuzzer::playTone(unsigned int freq, unsigned long duration)
{
  tone(_port.getPin(_pinIdx), freq, duration);
}

void MexBuzzer::pause()
{
  noTone(_port.getPin(_pinIdx));
}
