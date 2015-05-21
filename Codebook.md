# Codebook

## Description of Data



The features selected for this database come from the accelerometer and gyroscope 3-axial raw
signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix ‘t’ to denote time) were
captured at a constant rate of 50 Hz. and the acceleration signal was then separated into body
and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) – both using a low pass
Butterworth filter.

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals
were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag,
tBodyGyroMag, tBodyGyroJerkMag).

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ,
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the ‘f’ to indicate frequency domain signals).
Description of abbreviations of measurements:

*    subject = subject ID of participant
*    activity = activity being performed by participant
*    leading t or f is based on time or frequency measurements.
*    Body = related to body movement.
*    Gravity = acceleration of gravity
*    Acc = accelerometer measurement
*    Gyro = gyroscopic measurements
*    Jerk = sudden movement acceleration
*    Mag = magnitude of movement
*    mean and SD are calculated for each subject for each activity for each mean and SD 
measurements.



## Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 
19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, 
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on
the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear 
acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have 
been video-recorded to label the data manually. The obtained dataset has been randomly 
partitioned into two sets, where 70% of the volunteers was selected for generating the training 
data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters
and then sampled in fixed-width sliding windows. From each window, a vector of features was
obtained by calculating variables from the time and frequency domain.
