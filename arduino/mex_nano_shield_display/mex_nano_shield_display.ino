
// Input Pins
#define PIN_A1  A3
#define PIN_A2  A2
#define PIN_A3  A1
#define PIN_A4  A0
#define PIN_B1  A7
#define PIN_B2  A6
#define PIN_B3  A5
#define PIN_B4  A4

// Display Pins (Output)
#define PIN_DA  8
#define PIN_DB  7
#define PIN_DC  6
#define PIN_DD  5
#define PIN_DE  4
#define PIN_DF  3
#define PIN_DG  2
#define PIN_DP  9 // Decimal Point

// Display COM (Output)
#define PIN_COMA  10
#define PIN_COMB  11

// Options (Input)
#define PIN_OPT1  12
#define PIN_OPT2  13

#define SEG_A     0
#define SEG_B     1
#define SEG_C     2
#define SEG_D     3
#define SEG_E     4
#define SEG_F     5
#define SEG_G     6
#define SEG_DP    7
#define SEGMENTS  8

#define CHAR_SPACE  32
#define CHAR_MINUS  45
#define NUM_CHARS   128

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

#define MODE_HEXADECIMAL  0
#define MODE_UNSIGNED     1
#define MODE_SIGNED       2
#define MODE_ALPHA_ANALOG 3

#define DIGIT_OFFSET      0x30
#define ALPHA_OFFSET      0x41 

uint8_t data_mode = 0;

uint8_t segments_left[SEGMENTS];
uint8_t segments_right[SEGMENTS];

uint8_t input_a = 0;
uint8_t input_b = 0;

uint8_t loopCnt = 0;
uint8_t counter = 0;

void updateDisplayLeft() 
{
  digitalWrite(PIN_DA, segments_left[0]);
  digitalWrite(PIN_DB, segments_left[1]);
  digitalWrite(PIN_DC, segments_left[2]);
  digitalWrite(PIN_DD, segments_left[3]);
  digitalWrite(PIN_DE, segments_left[4]);
  digitalWrite(PIN_DF, segments_left[5]);
  digitalWrite(PIN_DG, segments_left[6]);
  digitalWrite(PIN_DP, segments_left[7]);
}

void updateDisplayRight() 
{
  digitalWrite(PIN_DA, segments_right[0]);
  digitalWrite(PIN_DB, segments_right[1]);
  digitalWrite(PIN_DC, segments_right[2]);
  digitalWrite(PIN_DD, segments_right[3]);
  digitalWrite(PIN_DE, segments_right[4]);
  digitalWrite(PIN_DF, segments_right[5]);
  digitalWrite(PIN_DG, segments_right[6]);
  digitalWrite(PIN_DP, segments_right[7]);
}

void setCharLeft(uint8_t ch)
{
  if(ch >= NUM_CHARS) {
    return;
  }
  for( uint8_t i = 0; i < SEGMENTS; ++i) {
    segments_left[i] = DISPLAY_CHARS[ch][i];
  } 
}

void setCharRight(uint8_t ch)
{
  if(ch >= NUM_CHARS) {
    return;
  }
  for( uint8_t i = 0; i < SEGMENTS; ++i) {
    segments_right[i] = DISPLAY_CHARS[ch][i];
  } 
}

void setDigitLeft(uint8_t val)
{
  if(val <= 9) {
    setCharLeft(val + DIGIT_OFFSET);
  } else {
    val -= 10;
    setCharLeft(val + ALPHA_OFFSET);
  }
}

void setDigitRight(uint8_t val)
{
  if(val <= 9) {
    setCharRight(val + DIGIT_OFFSET);
  } else {
    val -= 10;
    setCharRight(val + ALPHA_OFFSET);
  }
}

uint8_t getDigital(int analogPin)
{
  int val = analogRead(analogPin);
  if( val > 300) {
    return HIGH;
  } else {
    return LOW;
  }
}

void updateInputs()
{
  uint8_t a1 = getDigital(PIN_A1) & 1;
  uint8_t a2 = getDigital(PIN_A2) & 1;
  uint8_t a3 = getDigital(PIN_A3) & 1;
  uint8_t a4 = getDigital(PIN_A4) & 1;
  uint8_t b1 = getDigital(PIN_B1) & 1;
  uint8_t b2 = getDigital(PIN_B2) & 1;
  uint8_t b3 = getDigital(PIN_B3) & 1;
  uint8_t b4 = getDigital(PIN_B4) & 1;
  input_a = (a4 << 3) | (a3 << 2) | (a2 << 1) | a1;
  input_b = (b4 << 3) | (b3 << 2) | (b2 << 1) | b1;
  uint8_t opt1 = digitalRead(PIN_OPT1);
  uint8_t opt2 = digitalRead(PIN_OPT2);
  if (opt1) {
    if (opt2) {
      data_mode = MODE_ALPHA_ANALOG;
    } else {
      data_mode = MODE_UNSIGNED;
    }
  } else {
    if (opt2) {
      data_mode = MODE_SIGNED;
    } else {
      data_mode = MODE_HEXADECIMAL;
    }
  }
}

void showHexadecimal(int val)
{
  setDigitLeft((val >> 4) & 0xF);
  setDigitRight(val & 0xF);
}

void showUnsigned(int val)
{
  uint8_t tens = (val / 10) % 10;
  uint8_t units = val % 10;
  setDigitLeft(tens);
  setDigitRight(units);
  if(val > 200) {
    segments_left[SEG_DP] = HIGH;
  } 
  if(val > 100) {
    segments_right[SEG_DP] = HIGH;
  }
}

void showTwosComplement(uint8_t val)
{
  if(val >> 3) {
    val = (~val) + 1;
    setCharLeft(CHAR_MINUS);
  } else {
    setCharLeft(CHAR_SPACE);
  }
  setDigitRight(val % 10);
}

void showOnesComplement(uint8_t val)
{
  if(val >> 3) {
    val = ~val;
    setCharLeft(CHAR_MINUS);
  } else {
    setCharLeft(CHAR_SPACE);
  }
  setDigitRight(val % 10);
}

void showIntSignBit(uint8_t val)
{
  if(val >> 3) {
    val = val - 8;
    setCharLeft(CHAR_MINUS);
  } else {
    setCharLeft(CHAR_SPACE);
  }
  setDigitRight(val % 10);
}

void showIntInvSignBit(uint8_t val)
{
  if(!(val >> 3)) {
    setCharLeft(CHAR_MINUS);
  } else {
    val = val - 8;
    setCharLeft(CHAR_SPACE);
  }
  setDigitRight(val % 10);
}

void showSigned()
{
  switch(input_b) {
    case 8:
      showTwosComplement(input_a);
      break;
    case 9:
      showOnesComplement(input_a);
      break;
    case 10:
      showIntSignBit(input_a);
      break;
    case 11:
      showIntInvSignBit(input_a);
      break;
    default:
      showTwosComplement(input_a);
      break;
  }
}

void showAlpha()
{
  setCharLeft(CHAR_SPACE);
  setCharRight((input_b << 4) | input_a);
}

void showAnalogDecimal()
{
  int val = analogRead(PIN_A1);
  showUnsigned(val);
}

void showAnalogPercent()
{
  int val = analogRead(PIN_A1);
  val = 99 * val / 255;
  showUnsigned(val);
}

void showAnalogHexadecimal()
{
  int val = analogRead(PIN_A1);
  showHexadecimal(val);
}

void showAnimation1()
{
  uint8_t val = input_a % 8;
  switch(val) {
    case 0:
      setCharRight('^');
      setCharLeft('^');
      break;
    case 1:
      setCharRight('\'');
      setCharLeft(96);
      break;
    case 2:
      setCharRight('-');
      setCharLeft('-');
      break;
    case 3:
      setCharRight('i');
      setCharLeft(',');
      break;
    case 4:
      setCharRight('_');
      setCharLeft('_');
      break;
    case 5:
      setCharRight(',');
      setCharLeft('i');
      break;
    case 6:
      setCharRight('-');
      setCharLeft('-');
      break;
    case 7:
    default:
      setCharRight(96);
      setCharLeft('\'');
      break;
  }
}

void showAlphaAnalog()
{
  switch(input_b) {
    case 8:
      showAnalogHexadecimal();
      break;
    case 9:
      showAnalogPercent();
      break;
    case 10:
      showAnalogDecimal();
      break;
    case 12:
      showAnimation1();
      break;  
    default:
      showAlpha();
      break;
  }
}

void displayData()
{
  switch(data_mode) {
    case MODE_UNSIGNED:
      showUnsigned((input_b << 4) | input_a);
      break;
    case MODE_SIGNED:
      showSigned();
      break;
    case MODE_ALPHA_ANALOG:
      showAlphaAnalog();
      break;
    case MODE_HEXADECIMAL:
    default:
      showHexadecimal((input_b << 4) | input_a);
      break;
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
  pinMode(PIN_COMA, OUTPUT);
  pinMode(PIN_COMB, OUTPUT);
  pinMode(PIN_OPT1, INPUT);
  pinMode(PIN_OPT2, INPUT);
  digitalWrite(PIN_COMA, LOW);
  digitalWrite(PIN_COMB, LOW);
}

void loop() {
  updateInputs();
  displayData();
  updateDisplayLeft();
  digitalWrite(PIN_COMA, HIGH);
  delayMicroseconds(100);
  // this write of LOW with delay is used to dim the display
  digitalWrite(PIN_COMA, LOW);
  delayMicroseconds(500);
  updateDisplayRight();
  digitalWrite(PIN_COMB, HIGH);
  delayMicroseconds(100);
  digitalWrite(PIN_COMB, LOW);
  delayMicroseconds(500);
}
