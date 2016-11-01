#include <Mexdulon.h>

// initialize port and pin for buzzer
MexBuzzer mexBuzzer(MEX_PORT_A, 0);

void setup()  { 
  mexBuzzer.init();
} 

void loop()  {
  // play some tone
  mexBuzzer.playTone(NOTE_C3);
  delay(500);
  // stop playing tone
  mexBuzzer.pause();
  delay(500);
}

