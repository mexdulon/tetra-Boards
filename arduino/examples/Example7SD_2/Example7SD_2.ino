#include <Mexdulon.h>

// initialize ports for 7-Segment Display
Mex7SD mex7SD_1(MEX_PORT_A, MEX_PORT_B);
Mex7SD mex7SD_2(MEX_PORT_C, MEX_PORT_D);

// this value is counted up from 0 to 99
int val = 0;

void setup()  { 
  mex7SD_1.init();
  mex7SD_2.init();
} 

void loop()  {
  // show digit 0
  mex7SD_1.showBCDDigit(val, 0);
  // show digit 1
  mex7SD_2.showBCDDigit(val, 1);
  mex7SD_1.update();
  mex7SD_2.update();
  delay(100);
  // count up to 99
  val++;
  if(val > 99) {
    val = 0;
  }
}

