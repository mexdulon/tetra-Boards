/**
  Mexdulon Dot Matrix Display Source
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#include "MexDMD.h"
//#include <cstdio>

MexDMD::MexDMD(int portCol, int portRow)
:	_portCol(portCol, OUTPUT),
  _portRow(portRow, OUTPUT)
{
	 for(int i = 0; i < DIMENSION; ++i) {
	 	for(int j = 0; j < DIMENSION; ++j) {
	 		_matrix.values[i][j] = LOW;
	 	}
	 }
}

void MexDMD::init()
{
	_portRow.init();
	_portCol.init();
}

void MexDMD::showMatrix(struct Matrix matrix)
{
	for(int i = 0; i < DIMENSION; ++i) {
		for(int j = 0; j < DIMENSION; ++j) {
			_matrix.values[i][j] = matrix.values[i][j];
		}
	}
}

void MexDMD::update()
{
	for(int i = 0; i < DIMENSION; ++i) {
		for(int j = 0; j < DIMENSION; ++j) {
			_portCol.setPinState(j, _matrix.values[i][j]);
			_portRow.setPinState(j, HIGH); // HIGH = row off
		}
		_portRow.setPinState(i, LOW); // only activate this row
	  _portRow.update();
	  _portCol.update();
		delay(2);
  }
}
