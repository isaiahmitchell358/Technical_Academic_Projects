**Abstract:**
The prompt that I chose to work on for this project was the “Machine Learning for Breast Cancer Diagnosis” prompt where the goal is to find a system that predicts whether the tumors are benign or malignant based on 9 factors including thickness, clump size, shape, adhesion, individual size, nuclei, chromatin, nucleoli, and mitosis. The ability to determine whether a tumor is benign or malignant allows for doctors to know the severity of the cancer, but it is hard to determine so in order to understand the level of the cancer a process of machine learning is required. In this project I created a model for determining which features are most important in determining whether a tumor is benign or malignant using supervised learning through a MatLab code. Then, I inputted the dataset provided for this project into the model and determined the clusters of benign and malignant tumors. In addition, I designed a model for unsupervised learning with the goal categorizing tumors into their respective identifiers of benign and malignant.

**Introduction:**
Breast cancer is a disease in which the cells in the breast have an abnormal growth rate and that results in an overflow of cells which causes the development of tumors and cancer cells that can spread throughout the body and become fatal. The female population are the people that are most at risk for this disease as one very common factor that increases risk is puberty when women start having menstrual periods. Breast cancer appears most commonly in mutations that require urgent attention in which a woman may need to have chemotherapy or breast removal in order to prevent the cancer. Biomechanical methods such as machine learning have been helpful in the diagnosis of breast cancers as it allows doctors to take the data from an x-ray and categorize cells into specific definitions. Machine learning allows doctors to use ultrasounds and mammograms in order to detect cancer earlier and treat the disease before the effects become lethal. In this project I used a supervised training model and an unsupervised training model in order to determine which of the tumors from the dataset was benign and which ones were malignant.

**Results:**
The dataset we were given for this project represents a large sample of tumors of breast cancer that uses 30 different factors to determine which tumors are benign and which are malignant. In order to conform to the prompt of using a 9-dimensional input vector I looked into all the columns of the provided data set and minimized it to the 9 columns that represent the categories from the prompt. The supervised learning model that I used for determining whether the tumors were benign or malignant takes the 9-dimensional dataset and uses cross-binary entropy loss for classification. The confusion matrix shows the iterations that the CPU went through during the training and how it adjusted to the data to determine the differences between the tumors.

<img width="432" height="378" alt="Screenshot 2026-07-03 at 11 55 43 AM" src="https://github.com/user-attachments/assets/91d755e4-a2a0-4d19-9c55-966b887b990f" />

The unsupervised training model takes the data from the 9-dimensional data set and uses PCA in order to form a cluster of the dataset of tumors and categorize them into benign and malignant in order to separate them.

<img width="408" height="328" alt="Screenshot 2026-07-03 at 11 56 07 AM" src="https://github.com/user-attachments/assets/3c7a1acc-0487-4d29-953f-5eee5deed0cd" />

**Discussion:**
In my supervised learning model the code shows an accuracy of 62.8319% which is not an optimal accuracy for determining which breast cancer tumors are benign and malignant and only a little over half of the tumors would be accurately represented. For my unsupervised learning model the code seemed to have a similar result where the clustering of the malignant tumors were inaccurate. However, based on the cluster plot the unsupervised learning model was good at determining which tumors were benign and the goal was to determine how to separate both benign and malignant tumors, including the potentially malignant tumors. Therefore, even though the models were not great, the unsupervised learning model provides a way to separate the benign and potentially malignant tumors. In future work considerations the supervised learning model would need much more iterations in the training process to obtain a model with better accuracy. The unsupervised learning model could be used for more immediate needs of machine learning for diagnosing breast cancer and helping in treating the disease in advance. The models address uses for the future giving scientists time to train the supervised model while doctors can use the unsupervised model for more current diagnoses.























Code:




Presentation
https://docs.google.com/presentation/d/1Q5p81ENvfoK5z22IdHPPeZziHFwXk9uUjVdcZ1hevDo/edit?usp=sharing 





References

World Health Organization. (n.d.). Breast cancer. World Health Organization. https://www.who.int/news-room/fact-sheets/detail/breast-cancer#:~:text=Overview,producing%20lobules%20of%20the%20breast.  

Islam, Taminul, et al. “Predictive Modeling for Breast Cancer Classification in the Context of Bangladeshi Patients by Use of Machine Learning Approach with Explainable AI.” Nature News, Nature Publishing Group, 11 Apr. 2024, www.nature.com/articles/s41598-024-57740-5. 


