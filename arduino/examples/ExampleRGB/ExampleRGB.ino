#include <Mexdulon.h>

MexRGB mexRGB(MEX_PORT_A);

int color = 0;

void setup()  { 
  mexRGB.init();
} 

void loop()  {
  mexRGB.setColor(color);
  mexRGB.update();
  delay(1000);
  color++;
  if(color >= MEX_COUNT_COLORS) {
    color = 0;
  }
}
