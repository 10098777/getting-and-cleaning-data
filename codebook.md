##The code book describing the variable in the tidy data set
Refer to the following websites for the description of raw data and the raw data itself.
Raw data description website:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Raw data website: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The variables in the tidy data set:
subject   2
   the volunteers participating in the experiment
          01..30  .number1 to number30 participants
activity  18  
   activity volunteers participated in
          WALKING: walking activity
          WALKING_UPSTAIRS: walking_upstairs activity
          WALKING_DOWNSTAIRS: walking_downstairs activity
          SITTING: sitting activity
          STANDING: standing activity
          LAYING: laying activity

The next 66 variables in the dataset refers to the average of the mean(denoted by mean()) or standard deviation (denoted by std()) of the features in each group which is defined as one subject participating in one activity. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z direction.

Features are normalized and bounded within [-1,1].



