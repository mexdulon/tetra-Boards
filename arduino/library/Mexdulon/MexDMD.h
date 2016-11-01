/**
  Mexdulon Dot Matrix Display Header
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#ifndef MEX_DMD_DEFINED
#define MEX_DMD_DEFINED

#include "Arduino.h"
#include "MexPort.h"

class MexDMD
{
public:
  static const int DIMENSION = 4; // number of rows = number of columns
  struct Matrix
  {
      uint8_t values[DIMENSION][DIMENSION];
  };

  MexDMD(int portCol, int portRow);

  void init();
  void update();
  void showMatrix(struct Matrix matrix);

private:
  MexPort _portCol, _portRow;
  struct Matrix _matrix;
};

#endif //MEX_DMD_DEFINED
