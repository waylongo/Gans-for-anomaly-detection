# Anomaly Detection using GANs 

> Waylon Wu, University of Missouri

This is a final project of the class ECE 8890 in University of Missouri. Generative adversarial network (GAN) is used to do anomaly detection on the tabular data.

|           | G         | A      | N        | G         | M      | M        |
| --------- | --------- | ------ | -------- | --------- | ------ | -------- |
|           | Precision | Recall | F1       | Precision | Recall | F1       |
| Gaussian  | 0.92      | 0.95   | 0.94     | 1.00      | 1.00   | **1.00** |
| Jain      | 0.84      | 0.80   | **0.82** | 0.70      | 0.90   | 0.78     |
| Pathbased | 0.83      | 0.80   | **0.82** | 0.82      | 0.70   | 0.76     |
| Flame     | 0.76      | 0.70   | **0.73** | 0.68      | 0.60   | 0.64     |



*PyTorch framework is used in this project.*

