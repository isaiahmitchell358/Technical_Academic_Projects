# Technical and Academic Projects


**Photoelectroglottography Device**

My team and I had to create a low-cost and accessible device that served as an alternative to current procedures of diagnosing vocal disorder and analyzing the behaviors of phonation. Current procedures, such as laryngoscopy, are invasive and expensive. Therefore, we wanted to develop a method where doctors can perform diagnoses on patients more efficiently.

I built a custom infrared sensor circuit and a transimpedance amplifier stage to capture vocal fold transitions (see figure ). When the team faced a bottleneck in signal amplification, I experimented and tested with a range of different resistance values to enhance the signal gain. This technical pivot ensured the device returned a strong enough signal to the Arduino code (see figure ) to graph and analyze the behavior of the glottis during speech. Without this improvement, the signal returned would not be detectable and difficult to differentiate between normal and abnormal glottal behavior.

Also, I constructed a durable hardware interface by soldering IR sensors and emitters, positioning them externally on the sternum and thyroid cartilage (see figure ). This helped to simplify the circuit set up so that the wires, sensors, and emitters would not be as fragile. The positioning optimized the signal received by the sensor.

**Hand Muscle EMG Detection for Mobility Diagnosis**

For this project, I created a device that 1) for patients suffering from neurogenerative diseases, assesses the health and mobility of a patient's hand; 2) for patients with speech disorders, aids in communication via Morse Code.

I assembled a three-lead EMG interface using LM741 and AD622 operational amplifiers (see fig. 3) to ensure high-precision signal conditioning when interfacing with human subjects. To translate these physiological signals into actionable data, I developed custom Arduino firmware (see) to distinguish between discrete physiological states, such as a resting palm versus a clenched fist. By integrating a responsive LED feedback system for real-time visual quantification, I refined the signal-to-noise ratio to ensure accurate detection across a gradient of muscle tension and to display Morse Code (see video). 

**Classification of Benign and Malignant Tumors Using Supervised and Unsupervised Learning**

I trained a machine learning model to retrieve a dataset of breast cancer cells and classify them between benign and malignant based on presented factors. This would help to automate the classification of tumor cells, and for doctors to diagnose the progress of the cancer and determine if the patient would require additional treatment.

I implemented both supervised and unsupervised learning models using MatLab for tumor cell classification. For the supervised model, I used sigmoid activation and binary cross-entropy loss, I focused on differentiating between benign and malignant tumors while minimizing false-positive rates. I coded the unsupervised model to use Principal Component Analysis (PCA) to perform dimensionality reduction, isolating distinct clusters for benign and malignant data points. (See )
