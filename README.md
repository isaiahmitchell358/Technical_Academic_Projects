# Photoelectroglottography-Device


**Photoelectroglottography Device**
Create a device that serves as an alternative to current procedures of diagnosing vocal disorder and analyzing the behaviors of phonation.

I engineered a custom infrared sensor circuit and a transimpedance amplifier stage to capture vocal fold transitions. When the team faced a bottleneck in signal amplification, I led the experimentation with resistance values to optimize sensitivity. This technical pivot ensured the device remained a functional, non-invasive alternative to traditional laryngoscopy, effectively addressing the discomfort associated with nasal intubation.

Also, I constructed a durable hardware interface by soldering IR sensors and emitters, positioning them externally on the sternum and thyroid cartilage. This helped to simplify the circuit set up; the wires, sensors, and emitters wouldn't break as easily; optimization of the signal received by the sensor.

**Hand Muscle EMG Detection for Mobility Diagnosis**

Create a device that patients suffering from disease and speech impairments could use to communicate via Morse Code, and to make a device that could help assess the health and function of a patient's hand.

I led the assembly of a three-lead EMG interface using LM741 and AD622 operational amplifiers to ensure high-precision signal conditioning when interfacing with human subjects. To translate these physiological signals into actionable data, I developed custom Arduino firmware to distinguish between discrete physiological states, such as a resting palm versus a clenched fist. By integrating a responsive LED feedback system for real-time visual quantification, I refined the signal-to-noise ratio to ensure accurate detection across a gradient of muscle tension. 

**Classification of Benign and Malignant Tumors Using Supervised and Unsupervised Learning**

The goal was to train a machine learning model to take a dataset of breast cancer cells and classify them between benign and malignant based on the factors represented in the datasheet

I implemented both supervised and unsupervised learning frameworks. By utilizing sigmoid activation and binary cross-entropy loss, I focused on differentiating between benign and malignant tumors while minimizing false-positive rates. Also, I implemented Principal Component Analysis (PCA) to perform dimensionality reduction, isolating distinct clusters for benign and malignant data points within an unsupervised framework.
