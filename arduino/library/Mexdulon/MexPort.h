/**
  Mexdulon Port Header
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#ifndef MEX_PORT_DEFINED
#define MEX_PORT_DEFINED

#include "Arduino.h"

#define MEX_PORT_A 1
#define MEX_PORT_B 2
#define MEX_PORT_C 3
#define MEX_PORT_D 4

class MexPort
{
  public:
  	static const uint8_t BITS = 4;

  	MexPort(int portIdx, uint8_t pin_mode = OUTPUT);

    virtual void init();
  	virtual void update();

  	uint8_t getPin(uint8_t index) const;
  	uint8_t getPinState(uint8_t index) const;

    int readPin(uint8_t index);

    /* direct analog write (PWM) */
    void writeAnalog(uint8_t index, uint8_t val);
    /* set pin to digital state (update needed!) */
  	void setPinState(uint8_t index, uint8_t val);
	  /* set value for port */
	  void setValue(uint8_t val);
    /* toggles pin state (update needed!) */
  	void togglePinState(uint8_t index);

  protected:
  	//void setPin(uint8_t index, uint8_t val);

    uint8_t _pinMode;
  	uint8_t _pins[BITS];
  	uint8_t _pinStates[BITS];
};

#endif //MEX_PORT_DEFINED
