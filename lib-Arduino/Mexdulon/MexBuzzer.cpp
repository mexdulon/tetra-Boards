#include "MexBuzzer.h"

unsigned int melody_tones[] = {
  NOTE_D4, 4,
  NOTE_E4, 4,
  NOTE_F4, 4,
  NOTE_G4, 4,
  NOTE_A4, 2,
  NOTE_A4, 2,
  NOTE_B4, 4,
  NOTE_B4, 4,
  NOTE_B4, 4,
  NOTE_B4, 4,
  NOTE_A4, 2,
  0,       2,
  NOTE_B4, 4,
  NOTE_B4, 4,
  NOTE_B4, 4,
  NOTE_B4, 4,
  NOTE_A4, 2,
  0,       2,
  NOTE_G4, 4,
  NOTE_G4, 4,
  NOTE_G4, 4,
  NOTE_G4, 4,
  NOTE_F4, 2,
  NOTE_F4, 2,
  NOTE_A4, 4,
  NOTE_A4, 4,
  NOTE_A4, 4,
  NOTE_A4, 4,
  NOTE_D4, 1
};

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

void MexBuzzer::playMelody()
{
  playMelody(melody_tones, 29);
}

void MexBuzzer::playMelody(unsigned int tones[], unsigned int len, unsigned long duration)
{
  for(int i = 0; i < len; ++i) {
    playTone(tones[2*i], duration / tones[2*i+1]);
  }
}
