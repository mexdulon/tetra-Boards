# mexdulon Arduino Nano Shield Display

This project is for the Arduino Nano Shield and uses the display for outputs. The input ports on the left are used as digital or analog inputs. The segment displays show the value or characters, which the inputs represent.

|Opt1|Opt2|Output      |
|----|----|------------|
|open|open|Hexadecimal |
|open|set |Signed Int  |
|set |open|Unsigned Int|
|set |set |Alpha/Analog|

## Hexadecimal
Value of In A is displayed on right display in hexadecimal.
Value of In B is displayed on left display in hexadecimal.

|Value|Output|
|-----|------|
|0..9 |0..9  |
|10   |A     |
|11   |b     |
|12   |C     |
|13   |d     |
|14   |E     |
|15   |F     |

## Signed Int
Value of In A is displayed as signed integer value (decimal, -8..7).
In B sets the mode, how the value is interpreted.

|In B|Mode           |
|----|---------------|
|8   |Twos Complement|
|9   |Ones Complement|
|10  |Sign Bit       |
|11  |Inv. Sign Bit  |
|else|Twos Complement|

## Unsigned Int
In A and In B are interpreted as one word and displayed as unsigned integer (decimal, 0..255). The right decimal point shows the 100, the left one (together with right) 200.

## Alpha/Analog
In analog modes the analog value of pin A1 is read and displayed.
In animation mode the digital value of A is used for the output.
In alpha mode the digital value of A and B combined are displayed as ASCII character.

|In B|Mode              |Output    |
|----|------------------|----------|
|8   |Analog Hexadecimal|    00..FF|
|9   |Analog Percent    |     0..99|
|10  |Analog Decimal    |    0..255|
|12  |Animation 1       | Animation|
|else|Alpha (ASCII)     |ASCII char|
