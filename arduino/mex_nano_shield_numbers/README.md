# mexdulon Arduino Nano Shield Numbers

This project is for the Arduino Nano Shield, uses I2C at Port B and Z for display 
multiplexing. The display output is X and Y as usual.

|Port|Function   |
|----|-----------|
|A   |Mode Output (binary)|
|B   |I2C (A4,A5)|
|X   |Display Out 1|
|Y   |Display Out 2|
|Z   |Display Multiplexing|

|Value|Format|Output      |
|-----|------|------------|
|0 | NUL | - Empty -                      |
|1 | OCT | Octal                          |
|2 | HEX | Hexadecimal                    |
|3 | DCU | Decimal Unsigned               |
|4 | DCS | Decimal Signed                 |
|5 | FXU | Fixed-Point Number Unsigned    |
|6 | FXS | Fixed-Point Number Signed      |
|7 | FLU | Floating-Point Number Unsigned |
|8 | FLS | Floating-Point Number Signed   |

## OCT: Octal
The value is displayed in three octal digits (0..7).

## HEX: Hexadecimal
The value is displayed in two hexadecimal digits:

|Value|Output|
|-----|------|
|0..9 |0..9  |
|10   |A     |
|11   |b     |
|12   |C     |
|13   |d     |
|14   |E     |
|15   |F     |

## DCU: Decimal Unsigned
The value is displayed as unsigned integer in decimal (0..255). 

## DCS: Decimal Signed
The value is displayed as signed integer in decimal (-128..127). The format is two's complement.

## FXU: Fixed-Point Number Unsigned
The value is displayed as decimal (positive) number with the decimal point (e.g. 15.9375).
The format is 4 bits for the value behind the decimal point and 4 bits before it.
So the values of the bits is as follows: |8|4|2|1|0.5|0.25|0.125|0.0625|

## FXS: Fixed-Point Number Signed
The value is displayed as decimal (signed) number with the decimal point (e.g. -8.9375).
For negative numbers, the two's complement is used. See also FXU.

## FLU: Floating-Point Number Unsigned
The value is interpreted as floating point (unsigned) number. The display shows the significant and the exponent seperated by a superscript -. The significant is 4 bits and the exponent is 4 bits.

## FLS: Floating-Point Number Signed
The value is interpreted as floating point (signed) number. The display shows the significant and the exponent seperated by a superscript -. The MSB of the significant is the sign bit (1 for minus). The exponent uses the two's complement format. The significant is 4 bits and the exponent is 4 bits.

