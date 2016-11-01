#include "MexDMD.h"

// initialize ports: first is col, second is row
MexDMD mexDMD(MEX_PORT_A, MEX_PORT_B);

// create the matrix for the display
// HIGH is on, LOW is off
struct MexDMD::Matrix matrix = {{
  {HIGH,  LOW,  LOW, HIGH}, 
  {HIGH, HIGH,  LOW, HIGH},
  {HIGH,  LOW, HIGH, HIGH},
  {HIGH,  LOW,  LOW, HIGH}
  }};

void setup()  { 
  mexDMD.init();
  // prepare showing matrix on display (copy matrix)
  mexDMD.showMatrix(matrix);
} 

void loop()  { 
  // update display
  mexDMD.update();
}

