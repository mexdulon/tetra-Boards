/**
  Mexdulon Control Port Header
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#ifndef MEX_CTRL_PORT_DEFINED
#define MEX_CTRL_PORT_DEFINED

#include "Arduino.h"
#include "MexPort.h"

class MexCtrlPort : public MexPort
{
  public:
  	MexCtrlPort(int portIdx);

    virtual void init();

    void clockSignal();
  	void risingEdge();
    void fallingEdge();
    void clear();

  private:
    int _clk, _clr, _nclr;
};

#endif //MEX_CTRL_PORT_DEFINED
