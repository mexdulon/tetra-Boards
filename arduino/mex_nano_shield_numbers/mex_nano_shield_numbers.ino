#include <Wire.h>

// maximal number of displays (for multiplexing)
#define MAX_DISPLAYS 8

// significant is twos complement? else: sign bit
#define SIGNIFICANT_TWOS_COMPLEMENT 1
// exponent is twos complement? else: sign bit
#define EXPONENT_TWOS_COMPLEMENT 1

// Port A and B
#define PIN_A_1  A3
#define PIN_A_2  A2
#define PIN_A_3  A1
#define PIN_A_4  A0
#define PIN_B_1  A7
#define PIN_B_2  A6
#define PIN_B_3  A5
#define PIN_B_4  A4

// Display Pins (Output)
#define PIN_DA  8
#define PIN_DB  7
#define PIN_DC  6
#define PIN_DD  5
#define PIN_DE  4
#define PIN_DF  3
#define PIN_DG  2
#define PIN_DP  9 // Decimal Point

// Port Z
#define PIN_Z_1   10
#define PIN_Z_2   11
#define PIN_Z_3   12
#define PIN_Z_4   13

#define CHAR_SPACE  32  // character code for space
#define CHAR_MINUS  45  // character code for minus

#define SEG_A     0
#define SEG_B     1
#define SEG_C     2
#define SEG_D     3
#define SEG_E     4
#define SEG_F     5
#define SEG_G     6
#define SEG_DP    7
#define SEGMENTS  8

#define NUM_MODES 16

// mode to display
// 8: no display (disable bit)
const uint8_t MODE_TO_DISPLAY[NUM_MODES] = {
  8, 0, 1, 5, 2, 6, 3, 7, 8, 4, 1, 5, 2, 6, 3, 7
};

#define NUM_CHARS   128 // number of characters in table DISPLAY_CHARS

const uint8_t DISPLAY_CHARS[NUM_CHARS][SEGMENTS] = {
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //   0 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //   1 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //   2 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //   3 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //   4 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //   5 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //   6 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //   7 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //   8 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //   9
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  10 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  11 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  12 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  13 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  14 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  15 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  16 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  17 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  18 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  19
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  20 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  21 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  22 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  23 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  24 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  25 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  26 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  27 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  28 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  29 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  30 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  31 
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  32  (Space)
  { LOW, HIGH,  LOW,  LOW,  LOW,  LOW,  LOW, HIGH}, //  33  !
  { LOW, HIGH,  LOW,  LOW,  LOW, HIGH,  LOW,  LOW}, //  34  "
  { LOW, HIGH, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW}, //  35  #
  {HIGH,  LOW, HIGH, HIGH,  LOW, HIGH, HIGH, HIGH}, //  36  $
  { LOW,  LOW, HIGH,  LOW,  LOW, HIGH,  LOW,  LOW}, //  37  %
  {HIGH,  LOW, HIGH, HIGH, HIGH, HIGH, HIGH, HIGH}, //  38  &
  { LOW, HIGH,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  39  '
  { LOW, HIGH, HIGH,  LOW,  LOW,  LOW,  LOW,  LOW}, //  40  (
  { LOW,  LOW,  LOW,  LOW, HIGH, HIGH,  LOW,  LOW}, //  41  )
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW, HIGH, HIGH}, //  42  *
  { LOW, HIGH,  LOW,  LOW,  LOW,  LOW, HIGH, HIGH}, //  43  +
  { LOW,  LOW, HIGH,  LOW,  LOW,  LOW,  LOW,  LOW}, //  44  ,
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW, HIGH,  LOW}, //  45  -
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW, HIGH}, //  46  .
  { LOW, HIGH,  LOW,  LOW, HIGH,  LOW, HIGH,  LOW}, //  47  /
  {HIGH, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW,  LOW}, //  48  0
  { LOW, HIGH, HIGH,  LOW,  LOW,  LOW,  LOW,  LOW}, //  49  1
  {HIGH, HIGH,  LOW, HIGH, HIGH,  LOW, HIGH,  LOW}, //  50  2
  {HIGH, HIGH, HIGH, HIGH,  LOW,  LOW, HIGH,  LOW}, //  51  3
  { LOW, HIGH, HIGH,  LOW,  LOW, HIGH, HIGH,  LOW}, //  52  4
  {HIGH,  LOW, HIGH, HIGH,  LOW, HIGH, HIGH,  LOW}, //  53  5
  {HIGH,  LOW, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW}, //  54  6
  {HIGH, HIGH, HIGH,  LOW,  LOW,  LOW,  LOW,  LOW}, //  55  7
  {HIGH, HIGH, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW}, //  56  8
  {HIGH, HIGH, HIGH, HIGH,  LOW, HIGH, HIGH,  LOW}, //  57  9
  { LOW,  LOW, HIGH,  LOW,  LOW,  LOW,  LOW,  LOW}, //  58  :
  { LOW,  LOW, HIGH,  LOW,  LOW,  LOW,  LOW, HIGH}, //  59  ;
  { LOW,  LOW,  LOW, HIGH, HIGH,  LOW, HIGH,  LOW}, //  60  <
  { LOW,  LOW,  LOW, HIGH,  LOW,  LOW, HIGH,  LOW}, //  61  =
  { LOW,  LOW, HIGH, HIGH,  LOW,  LOW, HIGH,  LOW}, //  62  >
  {HIGH, HIGH,  LOW,  LOW, HIGH,  LOW, HIGH,  LOW}, //  63  ?
  {HIGH, HIGH, HIGH, HIGH, HIGH,  LOW, HIGH, HIGH}, //  64  @
  {HIGH, HIGH, HIGH,  LOW, HIGH, HIGH, HIGH,  LOW}, //  65  A
  { LOW,  LOW, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW}, //  66  B (b)
  {HIGH,  LOW,  LOW, HIGH, HIGH, HIGH,  LOW,  LOW}, //  67  C
  { LOW, HIGH, HIGH, HIGH, HIGH,  LOW, HIGH,  LOW}, //  68  D (d)
  {HIGH,  LOW,  LOW, HIGH, HIGH, HIGH, HIGH,  LOW}, //  69  E
  {HIGH,  LOW,  LOW,  LOW, HIGH, HIGH, HIGH,  LOW}, //  70  F
  {HIGH,  LOW, HIGH, HIGH, HIGH, HIGH,  LOW,  LOW}, //  71  G
  { LOW, HIGH, HIGH,  LOW, HIGH, HIGH, HIGH,  LOW}, //  72  H
  { LOW, HIGH, HIGH,  LOW,  LOW,  LOW,  LOW,  LOW}, //  73  I
  {HIGH, HIGH, HIGH, HIGH, HIGH,  LOW,  LOW,  LOW}, //  74  J
  { LOW,  LOW,  LOW,  LOW, HIGH, HIGH, HIGH, HIGH}, //  75  K
  { LOW,  LOW,  LOW, HIGH, HIGH, HIGH,  LOW,  LOW}, //  76  L
  {HIGH, HIGH, HIGH,  LOW, HIGH, HIGH,  LOW, HIGH}, //  77  M
  {HIGH, HIGH, HIGH,  LOW, HIGH, HIGH,  LOW,  LOW}, //  78  N
  {HIGH, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW,  LOW}, //  79  O
  {HIGH, HIGH,  LOW,  LOW, HIGH, HIGH, HIGH,  LOW}, //  80  P
  {HIGH, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW, HIGH}, //  81  Q
  {HIGH, HIGH, HIGH,  LOW, HIGH, HIGH, HIGH, HIGH}, //  82  R
  {HIGH,  LOW, HIGH, HIGH,  LOW, HIGH, HIGH,  LOW}, //  83  S
  {HIGH,  LOW,  LOW,  LOW, HIGH, HIGH,  LOW,  LOW}, //  84  T
  { LOW, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW,  LOW}, //  85  U
  { LOW, HIGH,  LOW,  LOW, HIGH, HIGH, HIGH,  LOW}, //  86  V
  { LOW, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW, HIGH}, //  87  W
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW, HIGH}, //  88  X
  { LOW, HIGH, HIGH, HIGH,  LOW, HIGH, HIGH,  LOW}, //  89  Y
  {HIGH, HIGH,  LOW, HIGH, HIGH,  LOW, HIGH,  LOW}, //  90  Z
  {HIGH,  LOW,  LOW, HIGH, HIGH, HIGH,  LOW,  LOW}, //  91  [
  { LOW,  LOW, HIGH,  LOW,  LOW, HIGH, HIGH,  LOW}, //  92  backslash
  {HIGH, HIGH, HIGH, HIGH,  LOW,  LOW,  LOW,  LOW}, //  93  ]
  {HIGH,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}, //  94  ^
  { LOW,  LOW,  LOW, HIGH,  LOW,  LOW,  LOW,  LOW}, //  95  _
  { LOW,  LOW,  LOW,  LOW,  LOW, HIGH,  LOW,  LOW}, //  96  `
  {HIGH, HIGH, HIGH, HIGH, HIGH,  LOW, HIGH,  LOW}, //  97  a
  { LOW,  LOW, HIGH, HIGH, HIGH, HIGH, HIGH,  LOW}, //  98  b
  { LOW,  LOW,  LOW, HIGH, HIGH,  LOW, HIGH,  LOW}, //  99  c
  { LOW, HIGH, HIGH, HIGH, HIGH,  LOW, HIGH,  LOW}, // 100  d
  {HIGH, HIGH,  LOW, HIGH, HIGH, HIGH, HIGH,  LOW}, // 101  e
  {HIGH,  LOW,  LOW,  LOW, HIGH, HIGH, HIGH,  LOW}, // 102  f
  {HIGH, HIGH, HIGH, HIGH,  LOW, HIGH, HIGH,  LOW}, // 103  g
  { LOW,  LOW, HIGH,  LOW, HIGH, HIGH, HIGH,  LOW}, // 104  h
  { LOW,  LOW,  LOW,  LOW, HIGH,  LOW,  LOW,  LOW}, // 105  i
  { LOW,  LOW, HIGH, HIGH,  LOW,  LOW,  LOW,  LOW}, // 106  j
  { LOW,  LOW,  LOW,  LOW, HIGH, HIGH, HIGH, HIGH}, // 107  k
  { LOW,  LOW,  LOW,  LOW, HIGH, HIGH,  LOW,  LOW}, // 108  l
  { LOW,  LOW, HIGH,  LOW, HIGH,  LOW, HIGH, HIGH}, // 109  m
  { LOW,  LOW, HIGH,  LOW, HIGH,  LOW, HIGH,  LOW}, // 110  n
  { LOW,  LOW, HIGH, HIGH, HIGH,  LOW, HIGH,  LOW}, // 111  o
  {HIGH, HIGH,  LOW,  LOW, HIGH, HIGH, HIGH,  LOW}, // 112  p
  {HIGH, HIGH, HIGH,  LOW,  LOW, HIGH, HIGH,  LOW}, // 113  q
  { LOW,  LOW,  LOW,  LOW, HIGH,  LOW, HIGH,  LOW}, // 114  r
  {HIGH,  LOW, HIGH, HIGH,  LOW, HIGH, HIGH,  LOW}, // 115  s
  { LOW,  LOW,  LOW, HIGH, HIGH, HIGH, HIGH,  LOW}, // 116  t
  { LOW,  LOW, HIGH, HIGH, HIGH,  LOW,  LOW,  LOW}, // 117  u
  { LOW,  LOW,  LOW,  LOW, HIGH,  LOW,  LOW,  LOW}, // 118  v
  { LOW,  LOW, HIGH, HIGH, HIGH,  LOW,  LOW, HIGH}, // 119  w
  { LOW, HIGH, HIGH,  LOW, HIGH, HIGH, HIGH, HIGH}, // 120  x
  { LOW, HIGH, HIGH, HIGH,  LOW, HIGH, HIGH,  LOW}, // 121  y
  {HIGH, HIGH,  LOW, HIGH, HIGH,  LOW, HIGH,  LOW}, // 122  z
  { LOW, HIGH, HIGH,  LOW,  LOW,  LOW, HIGH,  LOW}, // 123  {
  { LOW,  LOW,  LOW,  LOW, HIGH, HIGH,  LOW,  LOW}, // 124  |
  { LOW,  LOW,  LOW,  LOW, HIGH, HIGH, HIGH,  LOW}, // 125  }
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW, HIGH, HIGH}, // 126  ~
  { LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW,  LOW}  // 127  DEL
};

#define DIGIT_OFFSET      48 // offset for digits (starting at 0)
#define ALPHA_OFFSET      65 // offset for letters (starting at A)

uint8_t data_mode = 0;
uint8_t data_value = 0;

uint8_t segments[MAX_DISPLAYS][SEGMENTS];

uint8_t input_a = 0;
uint8_t input_b = 0;

uint8_t loopCnt = 0;
uint8_t counter = 0;

uint8_t multiplex_display = 0;

uint32_t pow2(int times)
{
  uint32_t result = 1;
  if (times > 0) {
    result = ((uint32_t)2 << (times - 1));
  }
  return result;
}

uint32_t pow10(int times)
{
  uint32_t result = 1;
  for( int i = 0; i < times; ++i) {
    result *= 10;
  } 
  return result;
}

void updateDisplay(uint8_t index) 
{
  if (index >= MAX_DISPLAYS) {
    return;
  }
  digitalWrite(PIN_DA, segments[index][0]);
  digitalWrite(PIN_DB, segments[index][1]);
  digitalWrite(PIN_DC, segments[index][2]);
  digitalWrite(PIN_DD, segments[index][3]);
  digitalWrite(PIN_DE, segments[index][4]);
  digitalWrite(PIN_DF, segments[index][5]);
  digitalWrite(PIN_DG, segments[index][6]);
  digitalWrite(PIN_DP, segments[index][7]);
}

void setDP(uint8_t index, uint8_t set)
{
  if (index >= MAX_DISPLAYS) {
    return;
  }
  segments[index][7] = set;
}

void setExpSeperator(uint8_t index)
{
  if (index >= MAX_DISPLAYS) {
    return;
  }
  segments[index][0] = HIGH;
  segments[index][1] = HIGH;
  segments[index][2] = LOW;
  segments[index][3] = LOW;
  segments[index][4] = LOW;
  segments[index][5] = HIGH;
  segments[index][6] = LOW;
  segments[index][7] = LOW;
}

void setMultSeperator(uint8_t index)
{
  if (index >= MAX_DISPLAYS) {
    return;
  }
  segments[index][0] = LOW;
  segments[index][1] = LOW;
  segments[index][2] = HIGH;
  segments[index][3] = HIGH;
  segments[index][4] = HIGH;
  segments[index][5] = LOW;
  segments[index][6] = HIGH;
  segments[index][7] = LOW;
}

void setChar(uint8_t index, uint8_t ch)
{
  if(index >= MAX_DISPLAYS || ch >= NUM_CHARS) {
    return;
  }
  for( uint8_t i = 0; i < SEGMENTS; ++i) {
    segments[index][i] = DISPLAY_CHARS[ch][i];
  } 
}

void setDigit(uint8_t index, uint8_t val)
{
  if(val <= 9) {
    setChar(index, val + DIGIT_OFFSET);
  } else {
    val -= 10;
    setChar(index, val + ALPHA_OFFSET);
  }
}

void showSpaces()
{
  for (uint8_t i = 0; i < MAX_DISPLAYS; ++i) {
    setChar(i, CHAR_SPACE);
  }
}

void showOctal(uint8_t val)
{
  setChar(0, CHAR_SPACE);
  setChar(1, CHAR_SPACE);
  setChar(2, CHAR_SPACE);
  setChar(3, CHAR_SPACE);
  setChar(4, CHAR_SPACE);
  setDigit(5, (val >> 6) & 7);
  setDigit(6, (val >> 3) & 7);
  setDigit(7, val & 7);
}

void showHexadecimal(uint8_t val)
{
  setChar(0, CHAR_SPACE);
  setChar(1, CHAR_SPACE);
  setChar(2, CHAR_SPACE);
  setChar(3, CHAR_SPACE);
  setChar(4, CHAR_SPACE);
  setChar(5, CHAR_SPACE);
  setDigit(6, (val >> 4) & 0xF);
  setDigit(7, val & 0xF);
}

void showUnsigned(uint8_t val)
{
  uint8_t hundreds = (val / 100) % 10;
  uint8_t tens = (val / 10) % 10;
  uint8_t units = val % 10;
  setChar(0, CHAR_SPACE);
  setChar(1, CHAR_SPACE);
  setChar(2, CHAR_SPACE);
  setChar(3, CHAR_SPACE);
  setChar(4, CHAR_SPACE);
  if (hundreds > 0) {
    setDigit(5, hundreds);
  } else {
    setChar(5, CHAR_SPACE);
  }
  if (tens > 0 || hundreds > 0) {
    setDigit(6, tens);
  }
  else {
    setChar(6, CHAR_SPACE);
  }
  setDigit(7, units);
}

void showTwosComplement(uint8_t val)
{
  if(val & 128) {
    val = ~(val - 1);
    showUnsigned(val);
    //setChar(4, CHAR_MINUS);
  } else {
    showUnsigned(val);
  }
}

void showSigned(uint8_t val)
{
  if(val & 128) {
    val -= 128;
    showUnsigned(val);
    setChar(4, CHAR_MINUS);
  } else {
    showUnsigned(val);
  }
}

void setDecimals(uint8_t val)
{
  uint8_t dec1 = 0;
  uint8_t dec2 = 0;
  uint8_t dec3 = 0;
  uint8_t dec4 = 0;
  if (val & 8) {
    dec1 += 5;
  }
  if (val & 4) {
    dec1 += 2;
    dec2 += 5;
  }
  if (val & 2) {
    dec1 += 1;
    dec2 += 2;
    dec3 += 5;
  }
  if (val & 1) {
    dec2 += 6;
    dec3 += 2;
    dec4 += 5;
  }
  if (dec2 > 9) {
    dec2 -= 10;
    dec1 += 1;
  }
  setDigit(4, dec1);
  setDigit(5, dec2);
  setDigit(6, dec3);
  setDigit(7, dec4);
}

void showFXU(uint8_t val)
{
  uint8_t part1 = val & 0xF;
  uint8_t part2 = (val >> 4) & 0xF;
  uint8_t tens = (part2 / 10) % 10;
  uint8_t units = part2 % 10;

  setChar(0, CHAR_SPACE);
  setChar(1, CHAR_SPACE);
  if (tens > 0) {
    setDigit(2, tens);
  } else {
    setChar(2, CHAR_SPACE);
  }
  setDigit(3, units);
  setDP(3, 1);
  setDecimals(part1);
}

void showFXS(uint8_t val)
{    
  if(val & 128) {
    val -= 128;
    showFXU(val);
    setChar(2, CHAR_MINUS);
  } else {
    showFXU(val);
    setChar(2, CHAR_SPACE);
  }
}

void showFXS_TwosComplement(uint8_t val)
{
  if(val & 128) {
    val = ~(val - 1);
    showFXU(val);
    //setChar(2, CHAR_MINUS);
  } else {
    showFXU(val);
  }
}

void showFLU(uint8_t val)
{
  uint8_t exponent = val & 0xF;
  uint8_t significant = (val >> 4) & 0xF;
  uint8_t tens = (significant / 10) % 10;
  uint8_t units = significant % 10;
  uint8_t exp10 = (exponent / 10) % 10;
  uint8_t exp1  = exponent % 10;
  
  setChar(0, CHAR_SPACE);
  if (tens > 0) {
    setDigit(1, tens);
  } else {
    setChar(1, CHAR_SPACE);
  }
  setDigit(2, units);
  setMultSeperator(3);
  setDigit(4, 2);
  setExpSeperator(5);
  setDigit(6, exp10);
  setDigit(7, exp1);
}

void showFLS(uint8_t val)
{
  uint8_t exponent = val & 0xF;
  uint8_t significant = (val >> 4) & 0xF;

  setChar(0, CHAR_SPACE);
  if (significant & 8) {
    if (SIGNIFICANT_TWOS_COMPLEMENT) {
      significant = (~significant & 0xF) + 1;
    } else {
      significant -= 8;
    }
    setChar(1, CHAR_MINUS);
  } else {
    setChar(1, CHAR_SPACE);
  }
  setDigit(2, significant);
  setMultSeperator(3);
  setDigit(4, 2);
  setExpSeperator(5);
  if (exponent & 8) {
    if (EXPONENT_TWOS_COMPLEMENT) {
      exponent = (~exponent & 0xF) + 1;
    } else {
      exponent -= 8;
    }
    setChar(6, CHAR_MINUS);
  } else {
    setChar(6, CHAR_SPACE);
  } 
  setDigit(7, exponent);
}

void showFLU_Dec(uint8_t val)
{
  uint32_t exponent = (val & 0xF);
  uint32_t significant = (val >> 4) & 0xF;
  uint32_t fval = significant * pow2(exponent);

  Serial.print("Fval: ");
  Serial.println(fval);
  
  uint8_t firstDigit = 0;
  uint8_t maxLoop = MAX_DISPLAYS;
  uint32_t power = pow10(maxLoop - 1);
  for(int i = 0; i < maxLoop; i++) {
    uint8_t times = maxLoop - i - 1;
    uint8_t digit = (fval / power % 10);
    if (digit > 0 || firstDigit || (i + 1) == maxLoop) {
      setDigit(i, digit);
      firstDigit = 1;
    } else {
      setChar(i, CHAR_SPACE);
    }
    power /= 10;
  }
}

void displayFloatString(char *str, int len)
{
  int8_t maxLen = (int8_t)(len - 1);
  uint8_t firstNonZero = 0;
  int8_t dpIndex = -1;
  int8_t dpStrIndex = 0;
  int8_t strIndex = maxLen;
  int8_t displayIndex = MAX_DISPLAYS - 1;
  for (int8_t i = 0; i <= maxLen; i++) {
    if (str[i] == '.') {
      dpStrIndex = i;
      break;
    }
  }
  
  for (; strIndex >= 0; strIndex--) {
    char ch = str[strIndex];
    if (ch == '.') {
      if (firstNonZero) {
        dpIndex = displayIndex;
      }
    } else if (ch == '0') {
      if (firstNonZero || strIndex <= dpStrIndex) {
        setChar(displayIndex, ch);
        displayIndex--;
      }
    } else if (ch >= '1' && ch <= '9') {
      firstNonZero = 1;
      setChar(displayIndex, ch);
      displayIndex--;
    } else if (ch == '-') {
      setChar(displayIndex, ch);
      displayIndex--;
    }
  }
  if (dpIndex >= 0) {
    setDP(dpIndex, 1);
  }
  if (displayIndex == MAX_DISPLAYS - 1) {
    setChar(displayIndex, '0');
    displayIndex--;
  }
  for (; displayIndex >= 0; displayIndex--) {
    setChar(displayIndex, ' ');
  }
}

void showFLS_Dec(uint8_t val)
{
  int exponent = val & 0xF;
  int significant = (val >> 4) & 0xF;
  double fval;
  if (significant & 8) {
    if (SIGNIFICANT_TWOS_COMPLEMENT) {
      significant = -((~significant & 0xF) + 1);
    } else {
      significant = -(significant - 8);
    }
  }
  
  if (exponent & 8) {
    if (EXPONENT_TWOS_COMPLEMENT) {
      exponent = (~(exponent - 1)) & 0xF;
    } else {
      exponent -= 8;
    }
    fval = (double)(significant) / (double)pow2(exponent);
  } else {
    fval = (double)(significant) * (double)pow2(exponent);
  }

  Serial.print("Fval: ");
  Serial.println(fval, 10);

  if (fval == 0.0) {
    showSpaces();
    setDigit(MAX_DISPLAYS - 1, 0);
  }

  const int BUFFER_SIZE = 16;
  char str[BUFFER_SIZE];
  dtostrf(fval, BUFFER_SIZE, 7, str);
  Serial.print("Str: ");
  Serial.println(str);
  displayFloatString(str, BUFFER_SIZE);
}

void updateDisplayData()
{
  uint8_t val = data_value;
  switch(data_mode) {
    case 9:
      showOctal(val);
      break;
    case 1:
      showHexadecimal(val);
      break;
    case 2:
    case 10:
      showUnsigned(val);
      break;
    case 3:
      showSigned(val);
      break;
    case 4:
    case 12:
      showFXU(val);
      break;
    case 5:
      showFXS(val);
      break;
    case 6:
      showFLU(val);
      break;
    case 7:
      showFLS(val);
      break;
    case 11:
      showTwosComplement(val);
      break;
    case 13:
      showFXS_TwosComplement(val);
      break;
    case 14:
      showFLU_Dec(val);
      break;
    case 15:
      showFLS_Dec(val);
      break;
    default:
      showSpaces();
      break;
  }
}

void updateModeOutput()
{
  uint8_t output = MODE_TO_DISPLAY[data_mode];
  if (output & 1) {
    digitalWrite(PIN_A_1, HIGH);
  } else {
    digitalWrite(PIN_A_1, LOW);
  }
  
  if (output & 2) {
    digitalWrite(PIN_A_2, HIGH);
  } else {
    digitalWrite(PIN_A_2, LOW);
  }
  
  if (output & 4) {
    digitalWrite(PIN_A_3, HIGH);
  } else {
    digitalWrite(PIN_A_3, LOW);
  }

  if (output & 8) {
    digitalWrite(PIN_A_4, HIGH);
  } else {
    digitalWrite(PIN_A_4, LOW);
  }
}

void updateMultiplex()
{
  if (multiplex_display & 1) {
    digitalWrite(PIN_Z_1, HIGH);
  } else {
    digitalWrite(PIN_Z_1, LOW);
  }
  
  if (multiplex_display & 2) {
    digitalWrite(PIN_Z_2, HIGH);
  } else {
    digitalWrite(PIN_Z_2, LOW);
  }
  
  if (multiplex_display & 4) {
    digitalWrite(PIN_Z_3, HIGH);
  } else {
    digitalWrite(PIN_Z_3, LOW);
  }
}

void setup() {
  pinMode(PIN_DA, OUTPUT);
  pinMode(PIN_DB, OUTPUT);
  pinMode(PIN_DC, OUTPUT);
  pinMode(PIN_DD, OUTPUT);
  pinMode(PIN_DE, OUTPUT);
  pinMode(PIN_DF, OUTPUT);
  pinMode(PIN_DG, OUTPUT);
  pinMode(PIN_DP, OUTPUT);
  pinMode(PIN_Z_1, OUTPUT);
  pinMode(PIN_Z_2, OUTPUT);
  pinMode(PIN_Z_3, OUTPUT);
  pinMode(PIN_Z_4, OUTPUT);
  pinMode(PIN_A_1, OUTPUT);
  pinMode(PIN_A_2, OUTPUT);
  pinMode(PIN_A_3, OUTPUT);
  pinMode(PIN_A_4, OUTPUT);
  // Pin A4 and Z4 are always LOW
  digitalWrite(PIN_A_4, LOW);
  digitalWrite(PIN_Z_4, LOW);
  
  Serial.begin(9600);
  // Start the I2C Bus as Slave on address 9
  Wire.begin(9);
  // Attach a function to trigger when something is received.
  Wire.onReceive(receiveEvent);
}

void receiveEvent(int data) {
  data_mode = Wire.read();
  data_value = Wire.read();
  //Serial.print("Mode: ");
  //Serial.println(data_mode);
  //Serial.print("Value: ");
  //Serial.println(data_value);
  updateModeOutput();
  updateDisplayData();
}

void loop() {
  updateMultiplex();
  updateDisplay(multiplex_display);
  
  multiplex_display++;
  if (multiplex_display >= MAX_DISPLAYS) {
    multiplex_display = 0;
  }
  delay(2);
}
