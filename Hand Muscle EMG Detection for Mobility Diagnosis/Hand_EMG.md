**Abstract:**
Verbal communication is the main method that people use in order to converse and discuss topics with each other. However, an issue rises when people suffer from injuries or diseases that give them impaired speech. The goal of this project is to address that issue by developing a way to allow them to use Morse code as a form of communication via an LED. The leads are connected to the circuit which uses EMG signals from hand muscles for simple, intentional communication via Morse code. The circuit amplifies and filters the signals with LM741 and AD622 amplifiers for clear, noise-free outputs. The experiment makes use of resistors, capacitors, and an Arduino script which were adjusted in order to optimize the usage of the circuit. The LED promptly responds to hand muscle contractions allowing for people to produce a short flash of light (representing a dot) and a long flash of light (representing a dash). 

**Introduction:**
For the case of this project, the skin electrodes are placed in the palm of the hand and when the electrode is squeezed by the hand, the LED lights up. Somebody who can not speak can use the system to speak in Morse code using the electrodes with the LED. For example, if someone has locked-in syndrome, they will be unable to speak or move as well so the morse code communication can be proven useful. If someone also has muscular dystrophy, they have little mobility and have difficulty speaking. This system can be used to get the signals from the muscle activation and visualize the amount of pressure the subject is able to apply to light up the LED.
The operational amplifier used in the lab, LM741, is set to be a high-gain voltage amplifier and is DC-coupled. The LM741 and AD622 will be built on the bread board and used with a gain resistor. LM741 uses negative feedback allowing for a high gain that will amplify the voltage difference between two input signals and produce a precise controlled output. Also, the LM741 has “strong immunity” (Quarktwin) to noise disturbances, which allows for accurate measurements of the voltage differences and filters out unwanted noise and interference. The AD622 takes the weak EMG signal and amplifies it and removes DC offset (flat voltage) from signal C5 and R4 shown in Fig. 1. EMG (Electromyography) built from this is used to record the muscle's electrical activity. In addition, an Arduino is coded to control an LED that is connected to the breadboard. The output EMG signal travels to the Arduino and triggers the LED activation whenever it detects a spike, which in this case is when the hand applies enough pressure to the electrode.
 
**Methods:**
The circuit uses a power supply set at 18V as its source, and the proper amplifiers, LM741 and AD622, based on the ECG and EMG labs that have resistors and capacitors appropriate for a high pass filter as shown in Fig. 1. The resistors follow the same configuration as in Fig. 2 each having 100kΩ, and the capacitors were implemented in a similar fashion each being 22pF and 10nF for their respective amplifiers as shown in the same figure.


The R3 resistor in the circuit is treated as the gain resistor which was set at 330Ω which set a desirable gain for amplifying the signal. The electrode leads are connected to the rows on the breadboard appropriate for each lead, the two leads for measuring the voltage difference were connected to pinouts 2 and 3 of the LM741 respectively. Lastly the third lead acts as the ground lead which is connected to the negative terminal of the breadboard. The two electrodes that measure the voltage difference are placed on the hand and forearm respectively and the third electrode is placed near the lower abdomen. The arduino script in the figure in the Appendix section below provides a code that prompts an LED, connected to the output of the AD622 and output pinout of the arduino to light up when the voltage difference between the electrodes reach the threshold, achieved by muscle contractions in the palm. 

Fig. 1 Circuit diagram of the ECG and EMG labs

<img width="866" height="398" alt="Screenshot 2026-07-02 at 12 38 07 PM" src="https://github.com/user-attachments/assets/a66958da-153b-4a57-8559-8ad1c3cc7680" />


Fig. 2 The circuit diagram for the muscle contraction EMG

<img width="710" height="461" alt="Screenshot 2026-07-02 at 12 37 07 PM" src="https://github.com/user-attachments/assets/26fcebcf-72cb-4a32-a10b-ba47092655ee" />


Fig. 3 The circuit design with all the properties mentioned in the Methods section

<img width="337" height="184" alt="Screenshot 2026-06-28 at 5 31 59 PM" src="https://github.com/user-attachments/assets/32753ebe-f048-4454-9690-d73b206fe806" />

**Code:**
Initial values are set for the ledPin, the threshold, the sensorValue, and the prevValue. The setup defines the ledPin as the output. The Serial.begin prepares the arduino for communication with the computer. The loop continuously reads the new input and outputs a signal into the LED which turns on if the threshold is met.

<img width="508" height="420" alt="Screenshot 2026-06-28 at 4 23 55 PM" src="https://github.com/user-attachments/assets/9b78cf29-bdab-491b-8dd8-6d8f936439fd" />

**Results:**
Fig. 4 below shows the oscilloscope reading the signals of voltage differences that occur while there is muscle activation acting on the electrode. This signal was obtained by the circuit shown in the figure above in the Methods section which uses the LM741 and AD622 with a gain resistor of 330Ω.

Fig. 4 The EMG reading of different levels of muscle contractions

<img width="700" height="400" alt="Screenshot 2026-07-02 at 3 44 14 PM" src="https://github.com/user-attachments/assets/0c6aa0b8-642a-4786-91f0-55c20326f22d" />

The figures below show the different levels of light that the LED produces when the user applies the different amounts of muscle contraction. For example, Fig. 5 shows that a muscle contraction of a higher level produces a higher voltage difference resulting in a brighter light from the LED, and Fig. 6 shows that a lower level of muscle contraction produces a lower voltage difference resulting in a dimmer light.
Fig. 5 High level muscle contraction 

<img width="700" height="391" alt="Screenshot 2026-07-02 at 3 45 42 PM" src="https://github.com/user-attachments/assets/c08d18dc-d667-45de-95f7-6c97bd9fbcd4" />


Fig. 6 Low level muscle contraction

<img width="701" height="397" alt="Screenshot 2026-07-02 at 3 46 07 PM" src="https://github.com/user-attachments/assets/01b1e873-3c81-4d0e-8a6c-95e8813c7117" />

Discussion:

There were also some limitations that occurred, which can be improved on in later experiments. One limitation is that the gel electrodes do not stay on properly in the hand. If the electrodes are designed to fit more properly in the palm of the hand, it would work more effectively and cause less noise activation from the electrode moving around in the hand. However, when keeping the hand still, there would be no noise, and it would only activate when pressure is applied to the electrode. Experimentation can also be done in other placements of the hand, such as by having the electrode placed on the wrist to get certain muscle activations of each individual finger. This would give a better understanding of the subject’s muscle activation over time in each specific part of the hand rather than just the palm. However, this is beneficial because there can be certain subjects that play sports and suffer an injury and are unable to move every finger so they can only move a part of their hand. 
For future work, the muscle activations can also be used to measure the strain tensor of the hand by also improving the sensitivity and responsiveness of the system. Another method is to use a Bluetooth module of some sort to be able to wirelessly send the ECG signal to a server so that the subject’s muscle activations and strain can be seen remotely. This way, the subject can also use the Morse code communication remotely as well and send messages to the server.

The main goal of this project was to see and measure the muscle activations of the hand over time by also using Morse code to communicate. The project was overall successful as the LED  activated and stayed on as the pressure was applied, and turned off as soon as there was no pressure applied. As shown in the figure above from the results, the oscilloscope shows a wave when pressure is applied and when the hand is still and not pressing on the electrode, there is no noise and it is completely flat, and the LED is turned off. 

**Conclusion:**
This experiment was performed to test a model for a communication device that could be used for people who suffered from impaired speech or diseases that limited their ability to engage their vocal cords. The main goal was to provide these people with the ability to communicate with friends or loved ones via morse code, a language that can be easily accessed online. The results of the experiment showed that the LED responded promptly to the muscle activations performed by the user of the device. Also, the prompt response of the LED shows that the device can be used in order to apply it to morse code. In summary, the experiment was a success and the device can be used to sufficiently communicate.


Appendix:

Video Proof
https://drive.google.com/file/d/1ch1LrWxg5AxLsXp0BpFu-OPgDI49JbdI/view?usp=sharing
https://drive.google.com/file/d/1GEjvHnPVwHo5AmAYxbqk54794KCh68h2/view?usp=sharing

Work Cited:
Wooldrage, C. (2017a, November 10). Morse code (1836). Medium. https://medium.com/fgd1-the-archive/morse-code-771534ff98e4

Operational amplifier. Operational Amplifier - an overview | ScienceDirect Topics. (n.d.).
https://www.sciencedirect.com/topics/engineering/operational-amplifier
