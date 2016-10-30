/**
  Mexdulon Dot Matrix Display Source
  www.mexdulon.com

  Copyright (c) Oliver Krebs
**/
#include "MexDMD.h"
#include <cstdio>

MexDMD::MexDMD(int portRow, int portCol)
:	_portRow(portRow, OUTPUT),
	_portCol(portCol, OUTPUT),
	_dimmerTime(0u)
{
	// for(int i = 0; i < DIMENSION; ++i) {
	// 	for(int j = 0; j < DIMENSION; ++j) {
	// 		_matrix[i][j] = LOW;
	// 	}
	// }
}

void MexDMD::init()
{
	_portRow.init();
	_portCol.init();
}

void MexDMD::dimLight(unsigned int val)
{
	_dimmerTime = val;
}

void MexDMD::showMatrix(Matrix matrix)
{
	printf("Matrix = [");
	for(int i = 0; i < DIMENSION; ++i) {
		printf("[");
		for(int j = 0; j < DIMENSION; ++j) {
			_matrix.values[i][j] = matrix.values[i][j];
			printf("%d", _matrix.values[i][j]);
			printf(",");
		}
		printf("]");
	}
	printf("]");
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
  }

	if(_dimmerTime > 0) {
		for(int i = 0; i < DIMENSION; ++i) {
	    _portRow.setPinState(i, HIGH);
	  }
		_portRow.update();
	  delayMicroseconds(_dimmerTime);
	}
}
