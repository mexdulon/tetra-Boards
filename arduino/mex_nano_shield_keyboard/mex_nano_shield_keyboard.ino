#include <Wire.h>

// Port A
#define PIN_A_1  A3
#define PIN_A_2  A2
#define PIN_A_3  A1
#define PIN_A_4  A0
// Port B is used for I2C

// Port X
#define PIN_X_1  8
#define PIN_X_2  7
#define PIN_X_3  6
#define PIN_X_4  5
// Port Y
#define PIN_Y_1  4
#define PIN_Y_2  3
#define PIN_Y_3  2
#define PIN_Y_4  9
// Port Z
#define PIN_Z_1   10
#define PIN_Z_2   11
#define PIN_Z_3   12
#define PIN_Z_4   13

// the available modes
#define MODE_NUL 0
#define MODE_OCT 1
#define MODE_HEX 2
#define MODE_DCU 3
#define MODE_DCS 4
#define MODE_FXU 5
#define MODE_FXS 6
#define MODE_FLU 7
#define MODE_FLS 8

#define KEYBOARD_NO_KEY 0xFF

uint8_t data_mode = 0;
uint8_t data_value = 0;

int outPinArray[] = {10, 11, 12, 13}; // KEY IN
int inPinArray[] = {17, 16, 15, 14};  // KEY out  /Reihenfolge invertiert

/*
 * read analog value and convert to digital
 */
uint8_t getDigital(int analogPin)
{
  int val = analogRead(analogPin);
  if( val > 300) {
    return HIGH;
  } else {
    return LOW;
  }
}

/**
 * get pressed key of keyboard (Z-Out, A-In)
 */
uint8_t getKeyboardKey()
{
  digitalWrite(PIN_Z_4, HIGH);
  digitalWrite(PIN_Z_1, LOW);
  if (!getDigital(PIN_A_1)) {
    return 0;
  } else if (!getDigital(PIN_A_2)) {
    return 4;
  } else if (!getDigital(PIN_A_3)) {
    return 8;
  } else if (!getDigital(PIN_A_4)) {
    return 0xC;
  }
  digitalWrite(PIN_Z_1, HIGH);
  digitalWrite(PIN_Z_2, LOW);
  if (!getDigital(PIN_A_1)) {
    return 1;
  } else if (!getDigital(PIN_A_2)) {
    return 5;
  } else if (!getDigital(PIN_A_3)) {
    return 9;
  } else if (!getDigital(PIN_A_4)) {
    return 0xD;
  }
  digitalWrite(PIN_Z_2, HIGH);
  digitalWrite(PIN_Z_3, LOW);
  if (!getDigital(PIN_A_1)) {
    return 2;
  } else if (!getDigital(PIN_A_2)) {
    return 6;
  } else if (!getDigital(PIN_A_3)) {
    return 0xA;
  } else if (!getDigital(PIN_A_4)) {
    return 0xE;
  }
  digitalWrite(PIN_Z_3, HIGH);
  digitalWrite(PIN_Z_4, LOW);
  if (!getDigital(PIN_A_1)) {
    return 3;
  } else if (!getDigital(PIN_A_2)) {
    return 7;
  } else if (!getDigital(PIN_A_3)) {
    return 0xB;
  } else if (!getDigital(PIN_A_4)) {
    return 0xF;
  }
  return KEYBOARD_NO_KEY;
}

uint8_t getKey()
{
  // Tastatur - KEY-IN-A auf ANS-Z, KEY-OUT-X auf ANS-A
  for (int intOut = 0; intOut <= 3; intOut++) // KEY ablesen und speichern in intKeyboard
  {
    digitalWrite(outPinArray[intOut], LOW); // aktuelle Reihe auf 0
    for (int intIn = 0; intIn <= 3; intIn++) // Spalten ablesen
    {
      int intRead = analogRead(inPinArray[intIn]); // lesen analog wegen ew. Diodenkombinationen
      if (intRead < 400) // Grenze 1/0 (0-1024)
        return intOut + intIn * 4; // ermittlung der Tastennummern
    }
    digitalWrite(outPinArray[intOut], HIGH); // Reieh auf 1
  }
  return KEYBOARD_NO_KEY;
}

uint8_t getABinary()
{
  uint8_t val = 0;
  val |= getDigital(PIN_A_1);
  val |= getDigital(PIN_A_2) << 1;
  val |= getDigital(PIN_A_3) << 2;
  val |= getDigital(PIN_A_4) << 3;
  return val;
}

/**
 * get combined value of X + Y (one byte)
 */
uint8_t getValueXY()
{
  uint8_t val = digitalRead(PIN_X_1);
  val |= digitalRead(PIN_X_2) << 1;
  val |= digitalRead(PIN_X_3) << 2;
  val |= digitalRead(PIN_X_4) << 3;
  val |= digitalRead(PIN_Y_1) << 4;
  val |= digitalRead(PIN_Y_2) << 5;
  val |= digitalRead(PIN_Y_3) << 6;
  val |= digitalRead(PIN_Y_4) << 7;
  return val;
}

void setup() {
  pinMode(PIN_A_1, INPUT);
  pinMode(PIN_A_2, INPUT);
  pinMode(PIN_A_3, INPUT);
  pinMode(PIN_A_4, INPUT);
  pinMode(PIN_X_1, INPUT);
  pinMode(PIN_X_2, INPUT);
  pinMode(PIN_X_3, INPUT);
  pinMode(PIN_X_4, INPUT);
  pinMode(PIN_Y_1, INPUT);
  pinMode(PIN_Y_2, INPUT);
  pinMode(PIN_Y_3, INPUT);
  pinMode(PIN_Y_4, INPUT);
  pinMode(PIN_Z_1, OUTPUT);
  pinMode(PIN_Z_2, OUTPUT);
  pinMode(PIN_Z_3, OUTPUT);
  pinMode(PIN_Z_4, OUTPUT);
  digitalWrite(PIN_Z_1, HIGH);
  digitalWrite(PIN_Z_2, HIGH);
  digitalWrite(PIN_Z_3, HIGH);
  digitalWrite(PIN_Z_4, HIGH);

  Serial.begin(9600);
  // Start the I2C Bus as Master
  Wire.begin(); 
}

void loop() {
  uint8_t key = getABinary();
  uint8_t value = getValueXY();
  //Serial.print("Key: ");
  //Serial.println(key);
  //Serial.print("Value: ");
  //Serial.println(value);
  if (key != data_mode || value != data_value) {
    if (key != KEYBOARD_NO_KEY) {
      data_mode = key;
    }
    data_value = value;
    Wire.beginTransmission(9); 
    Wire.write(data_mode);    
    Wire.write(data_value);    
    Wire.endTransmission(); 
  }
  delay(250);   
}
