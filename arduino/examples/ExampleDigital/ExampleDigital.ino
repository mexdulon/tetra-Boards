#include <MexPort.h>

MexPort mexPort(MEX_PORT_A);

int toggle = 0;
int value = 0;

void setup()  { 
  mexPort.init();
} 

void loop()  {
  // set all pins of port to value
  mexPort.setValue(value);
  // set single pin of port to 0 or 1
  mexPort.setPinState(3, toggle);
  mexPort.update(); 
  // wait 500 ms
  delay(500);
  toggle = !toggle;
  value++;
  if(value > 7) {
    value = 0;
  }
}
