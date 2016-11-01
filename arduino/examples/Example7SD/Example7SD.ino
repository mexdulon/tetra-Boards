#include <Mexdulon.h>

// initialize ports for 7-Segment Display
// first is In A, second is In B
Mex7SD mex7SD(MEX_PORT_A, MEX_PORT_B);

int val = 0;

void setup()  { 
  mex7SD.init();
  // display a single char (digits or A to F)
  mex7SD.showChar('A');
  mex7SD.update();
  delay(1000);
} 

void loop()  {
  // diplay the hexadecimal value (0 to 9, A to F)
  mex7SD.showHex(val);
  mex7SD.update();
  delay(500);
  val++;
  if(val > 15) {
    // toggle the decimal dot segment
    mex7SD.toggleDot();
    val = 0;
  }
}

