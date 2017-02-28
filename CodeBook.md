
# CodeBook

Indicates all calculated variables and summaries, together with units, and any other relevant information.

#  DATA SOURCE

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Data source information 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.

- Triaxial Angular velocity from the gyroscope. 

- A 561-feature vector with time and frequency domain variables. 

- Its activity label. 

- An identifier of the subject who carried out the experiment.

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

Notes: 

- Features are normalized and bounded within [-1,1].

- Each feature vector is a row on the text file.

See 'README.txt' for more details. 

# VARIABLES OBTAINED AFTER THE TRANSFORMATION

- SUBJECT Subject identifier, integer, ranges from 1 to 30.

- ACTIVITY Activity identifier, sting associated to the following values during the test

   - WALKING (with value 1): subject was walking
   - WALKING_UPSTAIRS (with value 2): subject was walking up a staircase
   - WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase
   - SITTING (with value 4): subject was sitting
   - STANDING (with value 5): subject was standing
   - LAYING (with value 6): subject was laying down

Average of each variable for each activity and each subject. The average of each variable of the source data is taken which in its contents had the following string mean () and std ().
It is grouped by each subject and activity. The variables used are as follows:

- TimeBodyAccelerometer_mean_X
- TimeBodyAccelerometer_mean_Y
- TimeBodyAccelerometer_mean_Z
- TimeBodyAccelerometer_std_X
- TimeBodyAccelerometer_std_Y
- TimeBodyAccelerometer_std_Z
- TimeGravityAccelerometer_mean_X
- TimeGravityAccelerometer_mean_Y
- TimeGravityAccelerometer_mean_Z
- TimeGravityAccelerometer_std_X
- TimeGravityAccelerometer_std_Y
- TimeGravityAccelerometer_std_Z
- TimeBodyAccelerometerJerk_mean_X
- TimeBodyAccelerometerJerk_mean_Y
- TimeBodyAccelerometerJerk_mean_Z
- TimeBodyAccelerometerJerk_std_X
- TimeBodyAccelerometerJerk_std_Y
- TimeBodyAccelerometerJerk_std_Z
- TimeBodyGyroscope_mean_X
- TimeBodyGyroscope_mean_Y
- TimeBodyGyroscope_mean_Z
- TimeBodyGyroscope_std_X
- TimeBodyGyroscope_std_Y
- TimeBodyGyroscope_std_Z
- TimeBodyGyroscopeJerk_mean_X
- TimeBodyGyroscopeJerk_mean_Y
- TimeBodyGyroscopeJerk_mean_Z
- TimeBodyGyroscopeJerk_std_X
- TimeBodyGyroscopeJerk_std_Y
- TimeBodyGyroscopeJerk_std_Z
- TimeBodyAccelerometerMagnitude_mean
- TimeBodyAccelerometerMagnitude_std
- TimeGravityAccelerometerMagnitude_mean
- TimeGravityAccelerometerMagnitude_std
- TimeBodyAccelerometerJerkMagnitude_mean
- TimeBodyAccelerometerJerkMagnitude_std
- TimeBodyGyroscopeMagnitude_mean
- TimeBodyGyroscopeMagnitude_std
- TimeBodyGyroscopeJerkMagnitude_mean
- TimeBodyGyroscopeJerkMagnitude_std
- FrequencyBodyAccelerometer_mean_X
- FrequencyBodyAccelerometer_mean_Y
- FrequencyBodyAccelerometer_mean_Z
- FrequencyBodyAccelerometer_std_X
- FrequencyBodyAccelerometer_std_Y
- FrequencyBodyAccelerometer_std_Z
- FrequencyBodyAccelerometerJerk_mean_X
- FrequencyBodyAccelerometerJerk_mean_Y
- FrequencyBodyAccelerometerJerk_mean_Z
- FrequencyBodyAccelerometerJerk_std_X
- FrequencyBodyAccelerometerJerk_std_Y
- FrequencyBodyAccelerometerJerk_std_Z
- FrequencyBodyGyroscope_mean_X
- FrequencyBodyGyroscope_mean_Y
- FrequencyBodyGyroscope_mean_Z
- FrequencyBodyGyroscope_std_X
- FrequencyBodyGyroscope_std_Y
- FrequencyBodyGyroscope_std_Z
- FrequencyBodyAccelerometerMagnitude_mean
- FrequencyBodyAccelerometerMagnitude_std
- FrequencyBodyAccelerometerJerkMagnitude_mean
- FrequencyBodyAccelerometerJerkMagnitude_std
- FrequencyBodyGyroscopeMagnitude_mean
- FrequencyBodyGyroscopeMagnitude_std
- FrequencyBodyGyroscopeJerkMagnitude_mean
 FrequencyBodyGyroscopeJerkMagnitude_std



