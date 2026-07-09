const int ledPin = A0;    // LED pin (PWM capable for smooth transitions)
const int threshold = 1;
int sensorValue = 0;
int prevValue = 0;
float voltage;
void setup() {
// initialize serial communication at 9600 bits per second
pinMode(ledPin, OUTPUT);
Serial.begin(9600);
}

void loop() {
// read the input on analog pin 0:
int prevValue = 0;
sensorValue = analogRead(A0);

// Convert the analog reading (which goes from 0-1023)
// to a voltage (0-5V):
voltage = sensorValue * 50;
int difference = abs(voltage - prevValue);
if (difference > threshold) {
        digitalWrite(ledPin, HIGH); // Wrist movement detected, turn LED on
} else {
        digitalWrite(ledPin, LOW); // No movement, turn LED off
    }
Serial.println(voltage);

delay(50);
}
