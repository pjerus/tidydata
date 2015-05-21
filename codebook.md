---
## title: "Tidy Data Codebook"
author: "Pat Jerus"
date: "May 20, 2015"
output: html_document
---

### SUMMARY
````sh
This is the codebook for the Tidy Data Clean up project for the Getting and Cleaning Data Class.

This data was originally gathered as part of the project for
Human Activity Recognition Using Smartphones Data Set. 

the orginal website and location for the data of this study is:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
````
### File Characteristics:
Representing files used in the runs_analysis.R script.
````sh
- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.
````

### Variables Used

-subject
-ActivityDESC
-tBodyAcc-mean()-X
-tBodyAcc-mean()-Y
-tBodyAcc-mean()-Z
-tBodyAcc-std()-X
-tBodyAcc-std()-Y
-tBodyAcc-std()-Z
-tGravityAcc-mean()-X
-tGravityAcc-mean()-Y
-tGravityAcc-mean()-Z
-tGravityAcc-std()-X
-tGravityAcc-std()-Y
-tGravityAcc-std()-Z
-tBodyAccJerk-mean()-X
-tBodyAccJerk-mean()-Y
-tBodyAccJerk-mean()-Z
-tBodyAccJerk-std()-X
-tBodyAccJerk-std()-Y
-tBodyAccJerk-std()-Z
-tBodyGyro-mean()-X
-tBodyGyro-mean()-Y
-tBodyGyro-mean()-Z
-tBodyGyro-std()-X
-tBodyGyro-std()-Y
-tBodyGyro-std()-Z
-tBodyGyroJerk-mean()-X
-tBodyGyroJerk-mean()-Y
-tBodyGyroJerk-mean()-Z
-tBodyGyroJerk-std()-X
-tBodyGyroJerk-std()-Y
-tBodyGyroJerk-std()-Z
-tBodyAccMag-mean()
-tBodyAccMag-std()
-tGravityAccMag-mean()
-tGravityAccMag-std()
-tBodyAccJerkMag-mean()
-tBodyAccJerkMag-std()
-tBodyGyroMag-mean()
-tBodyGyroMag-std()
-tBodyGyroJerkMag-mean()
-tBodyGyroJerkMag-std()
-fBodyAcc-mean()-X
-fBodyAcc-mean()-Y
-fBodyAcc-mean()-Z
-fBodyAcc-std()-X
-fBodyAcc-std()-Y
-fBodyAcc-std()-Z
-fBodyAcc-meanFreq()-X
-fBodyAcc-meanFreq()-Y
-fBodyAcc-meanFreq()-Z
-fBodyAccJerk-mean()-X
-fBodyAccJerk-mean()-Y
-fBodyAccJerk-mean()-Z
-fBodyAccJerk-std()-X
-fBodyAccJerk-std()-Y
-fBodyAccJerk-std()-Z
-fBodyAccJerk-meanFreq()-X
-fBodyAccJerk-meanFreq()-Y
-fBodyAccJerk-meanFreq()-Z
-fBodyGyro-mean()-X
-fBodyGyro-mean()-Y
-fBodyGyro-mean()-Z
-fBodyGyro-std()-X
-fBodyGyro-std()-Y
-fBodyGyro-std()-Z
-fBodyGyro-meanFreq()-X
-fBodyGyro-meanFreq()-Y
-fBodyGyro-meanFreq()-Z
-fBodyAccMag-mean()
-fBodyAccMag-std()
-fBodyAccMag-meanFreq()
-fBodyBodyAccJerkMag-mean()
-fBodyBodyAccJerkMag-std()
-fBodyBodyAccJerkMag-meanFreq()
-fBodyBodyGyroMag-mean()
-fBodyBodyGyroMag-std()
-fBodyBodyGyroMag-meanFreq()
-fBodyBodyGyroJerkMag-mean()
-fBodyBodyGyroJerkMag-std()
- fBodyBodyGyroJerkMag-meanFreq()

### Calculations

For all variables containing the string 'std' and 'mean'
respectivity indicating standard deviation and mean we calculated
the mean value for each student and activity combination.

Student and ActivityDESC acted as the key variables

### Data Set Characteristics:  

Multivariate, Time-Series

### Number of Instances:

10299

### Number of Attributes:

561

### Original Date Donated

2012-12-10

### Associated Tasks:

Classification, Clustering

### Missing Values?

N/A

### Original Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws


### Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Relevant Papers:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz. Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care. Volume 19, Issue 9. May 2013

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 

Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Català. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.


