Components
BPW 34 Photodiode: This is a high speed, high sensitivity photodiode with an visible optical range of 430 nm to 1100 nm, an optical angle output of  65 degrees from the incident and a reverse current of Ira=50A. This specific diode was selected due to its high photo and radiant sensitivity and fast response time. [18] Wires were cut, stripped and soldered onto the ends and plugged directly to the breadboard. The component should be placed below Adam's Apple.


<img width="312" height="162" alt="image" src="https://github.com/user-attachments/assets/716a421c-77ea-4ba6-8d31-782a412cba32" />

Figure 14: BPW34 Photodiode sensor image, with anode and cathode marking for reference.

850 nm 3W IR LED: This is an 850 nm IR LED, the optical emitter in the setup. 850 nm specifically is the perfect optical spectrum to propagate through biological tissue. It dissipates 500mW of power and has a maximum voltage drop across it 2.0V. 

<img width="312" height="133" alt="image" src="https://github.com/user-attachments/assets/750657b3-cd57-48d9-9e40-4fcf3590e3c1" />

Figure 15: 850 nm 3W IR LED image.

LM358 Gain Stage Amplifier: This is Dual op amp, meaning it has multiple sets of non-inverting/inverting inputs and outputs. It is a common op amp (the DIB has them), but primarily serves as an inverting amplifier, capable of turning a positive voltage put at the input and making it a negative voltage and vise-versa. This op-amp was originally used as a secondary gain stage, but removed due to saturation of the signal eliminating the photodiode’s natural dynamic range as described in section 6. [19] 

<img width="312" height="133" alt="image" src="https://github.com/user-attachments/assets/8e87074a-d2df-469d-9be7-6bc6ca026504" />

Figure 16: LM358 gain stage amplifier image, with the op-amp pinout schematic beside it. [20]

LTC6268 Operational Amplifier: This is a high speed, ultra low bias current op-amp. Low bias current simply means that there is small current leakage from the op amp input terminals. In an ideal op-amp, we assume the current at the input terminals to be 0, but this isn’t true in reality. These op amps are close to ideal in most circumstances, which is why it is a high quality op-amp to use as a transimpedance amplifier. Note, it is a dual supply op-amp, so configuration when wiring is key to keep full dynamic range.

<img width="200" height="158" alt="image" src="https://github.com/user-attachments/assets/c8f955fd-f025-4466-82b6-01918e4fcf14" />

Figure 17: LTC6268 trans-amp image, with the op-amp pinout schematic beside it. [21]

Resistors (3W): A resistor 3W power rating. Lower power rated resistors can burn when exposed to high amounts of power. Primarily used in the light circuit to put higher currents through the LED without overheating the resistor. Also used in the voltage divider for the LTC6268 op-amp.

Resistors (0.25 W): Normal power rating resistor, used just one of these in transamp circuit. Used a really large resistor (10 M Ω) so a higher wattage grade resistor is not needed.


<img width="212" height="275" alt="image" src="https://github.com/user-attachments/assets/06f7dea8-345d-40b7-9621-35ba167e6d22" />

Figure Wattage Resistor Ranges

2N2222 Transistor: The 2N2222 transistor is a NPN bipolar junction transistor that is commonly used in designs in low power amplification (current amplification) and as a power switch. It has a max collector current of 800 mA, max power dissipation of 500 mV, and a max 300 current gain. It is currently being used as a switch, using multiple power supplies connected to the base and collector pins of the semiconductor module to control current.

<img width="312" height="145" alt="image" src="https://github.com/user-attachments/assets/89d4b9d5-3a88-4051-89ce-e733775a5886" />

Figure 19: 2N2222 transistor image, with the pin labels and symbol beside it. [22]

SOIC-8 Socket Connector: The transimpedance amplifier is a small op-amp, it can not be plugged into a breadboard for rapid testing and prototyping. Our solution was to solder on an SOIC-8 socket connector and male header pins on the connector ends.

<img width="300" height="100" alt="image" src="https://github.com/user-attachments/assets/f5d3c819-293f-4949-97b5-8a0cab068f0f" />

Figure 20: SOIC-8 Socket Connector Image

Capacitors: Capacitors are circuit elements that store electrical charge, and analog circuits are useful for their ability to act as feedback capacitors to improve bandwidth and smoothing capacitors that can lower disturbances due to electronic noise. In our setup we have both such capacitors.

<img width="190" height="152" alt="image" src="https://github.com/user-attachments/assets/73bf4830-946e-4248-b76f-c3359e8894e6" />

Figure 21: Capacitor Image

Besides 3 external power supplies (power to the transistor, power to the base and collector pins of the transistor) these are all the components in our electronic setup and their general purpose. It is essential to separate both the Trans-Amp power ground and the power supply grounds. The LED power circuit should have no influence on the Trans-Amp photodiode signal amplification circuit, or else you will get strange behavior when visualizing the output signal. We soldered 1-2 feet long wires onto the LED(s), photodiode and soldered male wires on the very end to plug them into the breadboard accordingly. We used battery supplies for the light that we would also plug and unplug into the breadboard. We used the Arduino 5V pin to power the LTC6268 op-amp, and provide the midline voltage reference, with analog pin A0 connecting to the output pin 6 of the op-amp.

Since the Trans-Amp is a Dual supply, having a midline reference voltage at the non-inverting input is key. To achieve this midline reference, we simply did a voltage divider to supply the op-amp power with the necessary 5 volts, and then have a 2.5 midline going to both the photodiode and the non-inverting input. These are the R1 and R2 resistors in the circuit. Without this midline reference, the voltage may leave the LTC6268 op-amp’s dynamic range, leading to clipping and another potential loss of dynamic range.

<img width="400" height="142" alt="image" src="https://github.com/user-attachments/assets/e3156891-d49f-4311-9150-43077e559cc3" />

Figure 22: KiCAD Circuit Diagram of the Final Setup. 

<img width="200" height="150" alt="image" src="https://github.com/user-attachments/assets/b010f1fe-2185-4a11-bd19-063e87a32b66" />

Figure 22: Breadboard Prototype of “Final” Design, wired (left) and unwired (right).

<img width="200" height="250" alt="image" src="https://github.com/user-attachments/assets/da65a7a0-bd78-452a-98a0-5928b9187279" />

Figure 23: Testing device in real time, the 850 nm IR lights are shown above the Adam’s Apple, while the photodiode sensor is placed below around the jugular notch region (below the Adam’s apple). Both the lights and the sensor are soldered onto about 1-2 feet long strips of wire to give the participant/researcher range to adjust positioning manually.
