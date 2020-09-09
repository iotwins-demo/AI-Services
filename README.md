# AI Services for Digital Twins

Artificial Intelligence (AI) and simulation based services for digital twins. 

The repository is composed by the following directories:
- src/: contains the actual services and corollary utilities libraries;
- imgs/: contains the Docker images corresponding to the services

This is the list of the developed services, divided by macro-area; the service might be performed on the cloud or on the edge, or can be performed on both, as indicated.

### General services:
1. get_categorical_continuous_features - identify categorical and continuous features in a data frame (edge & cloud) 
2. encode_categorical_feature - encode a categorical feature into with one-hot encoding (edge & cloud) 
3. oneHot_encode - categorical feature encoding using one hot encoding (edge & cloud) 
4. normalize - data normalization (edge & cloud) 
5. preprocess - preprocess data frame (edge & cloud) 
6. split_data_noLabel - split dataframe in train, test and validation sets (edge & cloud) 
7. split_data_withLabel - split data frame in train, test and validation sets (edge & cloud) 
8. oversample – oversample a labeled data set (edge & cloud) 
9. sanitize - input string sanitation (edge & cloud) 

### Anomaly detection services: 
1. semisup_autoencoder - creates a semi-supervised autoencoder to detect anomalies (cloud)
2. semisup_detection_inference - exploits a semi-supervised autoencoder to detect anomalies (edge & cloud) 
3. sup_autoencoder_classr - creates a supervised model for anomaly detection, composed by an autoencoder plus a classifier layer (cloud) 
4. sup_detection_inference - exploits a supervised classifier to detect anomalies (edge & cloud) 
