# CODE BOOK

The contents of this file are derived from the 'README.txt' and 'features_info.txt' provided with the original dataset.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

====================================================
# Human Activity Recognition Using Smartphones Dataset
====================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## For each record it is provided:
==============================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## The original dataset includes the following files:
=================================================
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

========================
# Tidy Dataset Features: 
========================

Table of 180 rows x 479 columns. 

----
## Rows:
----
Each row is a unique 'subject' * 'activity' pair, resulting in 30*6 = 180 rows

-------
## Columns:
-------
* column 1: 'subject'
1 to 30
(The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.)
Derived from the 'subject_train.txt' and 'subject_test.txt' files

* column 2: 'activity'
1 to 6 (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
(Each subject performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist.)
Derived from the 'y_train.txt', 'y_test.txt' and 'activity_labels.txt' files

* columns 3 to 479:
The remaining 477 columns are "Features" containing time and frequency domain variables. 
Features are normalized and bounded within [-1,1]. 
Derived from the 'X_train.txt', 'X_test.txt' and 'features.txt' files

The details of these columns are summarized as follows. 


### Details of Columns 3 to 479:
===========================

Using the embedded accelerometer and gyroscope of the smartphone, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAccXYZ and tGyroXYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc.XYZ and tGravityAcc.XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk.XYZ and tBodyGyroJerk.XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc.XYZ, fBodyAccJerk.XYZ, fBodyGyro.XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
('XYZ' is used to denote 3-axial signals in the X, Y and Z directions.)

tBodyAcc.XYZ
tBodyAccJerk.XYZ
tBodyGyro.XYZ
tBodyGyroJerk.XYZ
tGravityAcc.XYZ

tBodyAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
tGravityAccMag

fBodyAcc.XYZ
fBodyAccJerk.XYZ
fBodyGyro.XYZ

fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
mean: Mean value
std: Standard deviation
mad: Median absolute deviation 
max: Largest value in array
min: Smallest value in array
sma: Signal magnitude area
energy: Energy measure. Sum of the squares divided by the number of values. 
iqr: Interquartile range 
entropy: Signal entropy
arCoeff: Autorregresion coefficients with Burg order equal to 4
correlation: correlation coefficient between two signals
maxInds: index of the frequency component with largest magnitude
meanFreq: Weighted average of the frequency components to obtain a mean frequency
skewness: skewness of the frequency domain signal 
kurtosis: kurtosis of the frequency domain signal 
bandsEnergy: Energy of a frequency interval within the 64 bins of the FFT of each window.
angle: Angle between to vectors.
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The 561 variables extracted from the original dataset could be classified into the following prefixes:

~ Time - Axial - XYZ:
tBodyAcc - 40
tBodyAccJerk - 40
tBodyGyro - 40
tBodyGyroJerk - 40
tGravityAcc - 40

~ Time - Magnitude:
tBodyAccMag - 13
tBodyAccJerkMag - 13
tBodyGyroMag - 13
tBodyGyroJerkMag - 13
tGravityAccMag - 13

~ Frequency - Axial - XYZ:
fBodyAcc - 79
fBodyAccJerk - 79
fBodyGyro - 79

~ Frequency - Magnitude:
fBodyAccMag - 13
fBodyAccJerkMag - 13
fBodyGyroMag - 13
fBodyGyroJerkMag - 13

~ Angle between Vectors:
angle - 7


### Please note the below modification
It was, however, noticed that the 'bandsEnergy' variables, which were 126 in number, were triplicated within the prefixes: fBodyAcc, fBodyAccJerk, fBodyGyro ((14*3)*3 = 126). 
The 14 bandsEnergy variables:
bandsEnergy1,16
bandsEnergy1,24
bandsEnergy1,8
bandsEnergy17,24
bandsEnergy17,32
bandsEnergy25,32
bandsEnergy25,48
bandsEnergy33,40
bandsEnergy33,48
bandsEnergy41,48
bandsEnergy49,56
bandsEnergy49,64
bandsEnergy57,64
bandsEnergy9,16

The data was reshaped using 'melt' and 'dcast', thus modifying the 'bandsEnergy' values to form 14 variables in each of the 3 prefixes (14*3 = 42), thereby reducing it to 42 'bandsEnergy' variables in total. Hence, the total number of Feature variables also reduce from 561 to a tidy 477. 

### The complete list of the 477 variables is as follows:

tBodyAcc.mean.X
tBodyAcc.mean.Y
tBodyAcc.mean.Z
tBodyAcc.std.X
tBodyAcc.std.Y
tBodyAcc.std.Z
tBodyAcc.mad.X
tBodyAcc.mad.Y
tBodyAcc.mad.Z
tBodyAcc.max.X
tBodyAcc.max.Y
tBodyAcc.max.Z
tBodyAcc.min.X
tBodyAcc.min.Y
tBodyAcc.min.Z
tBodyAcc.sma
tBodyAcc.energy.X
tBodyAcc.energy.Y
tBodyAcc.energy.Z
tBodyAcc.iqr.X
tBodyAcc.iqr.Y
tBodyAcc.iqr.Z
tBodyAcc.entropy.X
tBodyAcc.entropy.Y
tBodyAcc.entropy.Z
tBodyAcc.arCoeff.X.1
tBodyAcc.arCoeff.X.2
tBodyAcc.arCoeff.X.3
tBodyAcc.arCoeff.X.4
tBodyAcc.arCoeff.Y.1
tBodyAcc.arCoeff.Y.2
tBodyAcc.arCoeff.Y.3
tBodyAcc.arCoeff.Y.4
tBodyAcc.arCoeff.Z.1
tBodyAcc.arCoeff.Z.2
tBodyAcc.arCoeff.Z.3
tBodyAcc.arCoeff.Z.4
tBodyAcc.correlation.X.Y
tBodyAcc.correlation.X.Z
tBodyAcc.correlation.Y.Z
tGravityAcc.mean.X
tGravityAcc.mean.Y
tGravityAcc.mean.Z
tGravityAcc.std.X
tGravityAcc.std.Y
tGravityAcc.std.Z
tGravityAcc.mad.X
tGravityAcc.mad.Y
tGravityAcc.mad.Z
tGravityAcc.max.X
tGravityAcc.max.Y
tGravityAcc.max.Z
tGravityAcc.min.X
tGravityAcc.min.Y
tGravityAcc.min.Z
tGravityAcc.sma
tGravityAcc.energy.X
tGravityAcc.energy.Y
tGravityAcc.energy.Z
tGravityAcc.iqr.X
tGravityAcc.iqr.Y
tGravityAcc.iqr.Z
tGravityAcc.entropy.X
tGravityAcc.entropy.Y
tGravityAcc.entropy.Z
tGravityAcc.arCoeff.X.1
tGravityAcc.arCoeff.X.2
tGravityAcc.arCoeff.X.3
tGravityAcc.arCoeff.X.4
tGravityAcc.arCoeff.Y.1
tGravityAcc.arCoeff.Y.2
tGravityAcc.arCoeff.Y.3
tGravityAcc.arCoeff.Y.4
tGravityAcc.arCoeff.Z.1
tGravityAcc.arCoeff.Z.2
tGravityAcc.arCoeff.Z.3
tGravityAcc.arCoeff.Z.4
tGravityAcc.correlation.X.Y
tGravityAcc.correlation.X.Z
tGravityAcc.correlation.Y.Z
tBodyAccJerk.mean.X
tBodyAccJerk.mean.Y
tBodyAccJerk.mean.Z
tBodyAccJerk.std.X
tBodyAccJerk.std.Y
tBodyAccJerk.std.Z
tBodyAccJerk.mad.X
tBodyAccJerk.mad.Y
tBodyAccJerk.mad.Z
tBodyAccJerk.max.X
tBodyAccJerk.max.Y
tBodyAccJerk.max.Z
tBodyAccJerk.min.X
tBodyAccJerk.min.Y
tBodyAccJerk.min.Z
tBodyAccJerk.sma
tBodyAccJerk.energy.X
tBodyAccJerk.energy.Y
tBodyAccJerk.energy.Z
tBodyAccJerk.iqr.X
tBodyAccJerk.iqr.Y
tBodyAccJerk.iqr.Z
tBodyAccJerk.entropy.X
tBodyAccJerk.entropy.Y
tBodyAccJerk.entropy.Z
tBodyAccJerk.arCoeff.X.1
tBodyAccJerk.arCoeff.X.2
tBodyAccJerk.arCoeff.X.3
tBodyAccJerk.arCoeff.X.4
tBodyAccJerk.arCoeff.Y.1
tBodyAccJerk.arCoeff.Y.2
tBodyAccJerk.arCoeff.Y.3
tBodyAccJerk.arCoeff.Y.4
tBodyAccJerk.arCoeff.Z.1
tBodyAccJerk.arCoeff.Z.2
tBodyAccJerk.arCoeff.Z.3
tBodyAccJerk.arCoeff.Z.4
tBodyAccJerk.correlation.X.Y
tBodyAccJerk.correlation.X.Z
tBodyAccJerk.correlation.Y.Z
tBodyGyro.mean.X
tBodyGyro.mean.Y
tBodyGyro.mean.Z
tBodyGyro.std.X
tBodyGyro.std.Y
tBodyGyro.std.Z
tBodyGyro.mad.X
tBodyGyro.mad.Y
tBodyGyro.mad.Z
tBodyGyro.max.X
tBodyGyro.max.Y
tBodyGyro.max.Z
tBodyGyro.min.X
tBodyGyro.min.Y
tBodyGyro.min.Z
tBodyGyro.sma
tBodyGyro.energy.X
tBodyGyro.energy.Y
tBodyGyro.energy.Z
tBodyGyro.iqr.X
tBodyGyro.iqr.Y
tBodyGyro.iqr.Z
tBodyGyro.entropy.X
tBodyGyro.entropy.Y
tBodyGyro.entropy.Z
tBodyGyro.arCoeff.X.1
tBodyGyro.arCoeff.X.2
tBodyGyro.arCoeff.X.3
tBodyGyro.arCoeff.X.4
tBodyGyro.arCoeff.Y.1
tBodyGyro.arCoeff.Y.2
tBodyGyro.arCoeff.Y.3
tBodyGyro.arCoeff.Y.4
tBodyGyro.arCoeff.Z.1
tBodyGyro.arCoeff.Z.2
tBodyGyro.arCoeff.Z.3
tBodyGyro.arCoeff.Z.4
tBodyGyro.correlation.X.Y
tBodyGyro.correlation.X.Z
tBodyGyro.correlation.Y.Z
tBodyGyroJerk.mean.X
tBodyGyroJerk.mean.Y
tBodyGyroJerk.mean.Z
tBodyGyroJerk.std.X
tBodyGyroJerk.std.Y
tBodyGyroJerk.std.Z
tBodyGyroJerk.mad.X
tBodyGyroJerk.mad.Y
tBodyGyroJerk.mad.Z
tBodyGyroJerk.max.X
tBodyGyroJerk.max.Y
tBodyGyroJerk.max.Z
tBodyGyroJerk.min.X
tBodyGyroJerk.min.Y
tBodyGyroJerk.min.Z
tBodyGyroJerk.sma
tBodyGyroJerk.energy.X
tBodyGyroJerk.energy.Y
tBodyGyroJerk.energy.Z
tBodyGyroJerk.iqr.X
tBodyGyroJerk.iqr.Y
tBodyGyroJerk.iqr.Z
tBodyGyroJerk.entropy.X
tBodyGyroJerk.entropy.Y
tBodyGyroJerk.entropy.Z
tBodyGyroJerk.arCoeff.X.1
tBodyGyroJerk.arCoeff.X.2
tBodyGyroJerk.arCoeff.X.3
tBodyGyroJerk.arCoeff.X.4
tBodyGyroJerk.arCoeff.Y.1
tBodyGyroJerk.arCoeff.Y.2
tBodyGyroJerk.arCoeff.Y.3
tBodyGyroJerk.arCoeff.Y.4
tBodyGyroJerk.arCoeff.Z.1
tBodyGyroJerk.arCoeff.Z.2
tBodyGyroJerk.arCoeff.Z.3
tBodyGyroJerk.arCoeff.Z.4
tBodyGyroJerk.correlation.X.Y
tBodyGyroJerk.correlation.X.Z
tBodyGyroJerk.correlation.Y.Z
tBodyAccMag.mean
tBodyAccMag.std
tBodyAccMag.mad
tBodyAccMag.max
tBodyAccMag.min
tBodyAccMag.sma
tBodyAccMag.energy
tBodyAccMag.iqr
tBodyAccMag.entropy
tBodyAccMag.arCoeff1
tBodyAccMag.arCoeff2
tBodyAccMag.arCoeff3
tBodyAccMag.arCoeff4
tGravityAccMag.mean
tGravityAccMag.std
tGravityAccMag.mad
tGravityAccMag.max
tGravityAccMag.min
tGravityAccMag.sma
tGravityAccMag.energy
tGravityAccMag.iqr
tGravityAccMag.entropy
tGravityAccMag.arCoeff1
tGravityAccMag.arCoeff2
tGravityAccMag.arCoeff3
tGravityAccMag.arCoeff4
tBodyAccJerkMag.mean
tBodyAccJerkMag.std
tBodyAccJerkMag.mad
tBodyAccJerkMag.max
tBodyAccJerkMag.min
tBodyAccJerkMag.sma
tBodyAccJerkMag.energy
tBodyAccJerkMag.iqr
tBodyAccJerkMag.entropy
tBodyAccJerkMag.arCoeff1
tBodyAccJerkMag.arCoeff2
tBodyAccJerkMag.arCoeff3
tBodyAccJerkMag.arCoeff4
tBodyGyroMag.mean
tBodyGyroMag.std
tBodyGyroMag.mad
tBodyGyroMag.max
tBodyGyroMag.min
tBodyGyroMag.sma
tBodyGyroMag.energy
tBodyGyroMag.iqr
tBodyGyroMag.entropy
tBodyGyroMag.arCoeff1
tBodyGyroMag.arCoeff2
tBodyGyroMag.arCoeff3
tBodyGyroMag.arCoeff4
tBodyGyroJerkMag.mean
tBodyGyroJerkMag.std
tBodyGyroJerkMag.mad
tBodyGyroJerkMag.max
tBodyGyroJerkMag.min
tBodyGyroJerkMag.sma
tBodyGyroJerkMag.energy
tBodyGyroJerkMag.iqr
tBodyGyroJerkMag.entropy
tBodyGyroJerkMag.arCoeff1
tBodyGyroJerkMag.arCoeff2
tBodyGyroJerkMag.arCoeff3
tBodyGyroJerkMag.arCoeff4
fBodyAcc.mean.X
fBodyAcc.mean.Y
fBodyAcc.mean.Z
fBodyAcc.std.X
fBodyAcc.std.Y
fBodyAcc.std.Z
fBodyAcc.mad.X
fBodyAcc.mad.Y
fBodyAcc.mad.Z
fBodyAcc.max.X
fBodyAcc.max.Y
fBodyAcc.max.Z
fBodyAcc.min.X
fBodyAcc.min.Y
fBodyAcc.min.Z
fBodyAcc.sma
fBodyAcc.energy.X
fBodyAcc.energy.Y
fBodyAcc.energy.Z
fBodyAcc.iqr.X
fBodyAcc.iqr.Y
fBodyAcc.iqr.Z
fBodyAcc.entropy.X
fBodyAcc.entropy.Y
fBodyAcc.entropy.Z
fBodyAcc.maxInds.X
fBodyAcc.maxInds.Y
fBodyAcc.maxInds.Z
fBodyAcc.meanFreq.X
fBodyAcc.meanFreq.Y
fBodyAcc.meanFreq.Z
fBodyAcc.skewness.X
fBodyAcc.kurtosis.X
fBodyAcc.skewness.Y
fBodyAcc.kurtosis.Y
fBodyAcc.skewness.Z
fBodyAcc.kurtosis.Z
fBodyAcc.bandsEnergy.1.8
fBodyAcc.bandsEnergy.9.16
fBodyAcc.bandsEnergy.17.24
fBodyAcc.bandsEnergy.25.32
fBodyAcc.bandsEnergy.33.40
fBodyAcc.bandsEnergy.41.48
fBodyAcc.bandsEnergy.49.56
fBodyAcc.bandsEnergy.57.64
fBodyAcc.bandsEnergy.1.16
fBodyAcc.bandsEnergy.17.32
fBodyAcc.bandsEnergy.33.48
fBodyAcc.bandsEnergy.49.64
fBodyAcc.bandsEnergy.1.24
fBodyAcc.bandsEnergy.25.48
fBodyAccJerk.mean.X
fBodyAccJerk.mean.Y
fBodyAccJerk.mean.Z
fBodyAccJerk.std.X
fBodyAccJerk.std.Y
fBodyAccJerk.std.Z
fBodyAccJerk.mad.X
fBodyAccJerk.mad.Y
fBodyAccJerk.mad.Z
fBodyAccJerk.max.X
fBodyAccJerk.max.Y
fBodyAccJerk.max.Z
fBodyAccJerk.min.X
fBodyAccJerk.min.Y
fBodyAccJerk.min.Z
fBodyAccJerk.sma
fBodyAccJerk.energy.X
fBodyAccJerk.energy.Y
fBodyAccJerk.energy.Z
fBodyAccJerk.iqr.X
fBodyAccJerk.iqr.Y
fBodyAccJerk.iqr.Z
fBodyAccJerk.entropy.X
fBodyAccJerk.entropy.Y
fBodyAccJerk.entropy.Z
fBodyAccJerk.maxInds.X
fBodyAccJerk.maxInds.Y
fBodyAccJerk.maxInds.Z
fBodyAccJerk.meanFreq.X
fBodyAccJerk.meanFreq.Y
fBodyAccJerk.meanFreq.Z
fBodyAccJerk.skewness.X
fBodyAccJerk.kurtosis.X
fBodyAccJerk.skewness.Y
fBodyAccJerk.kurtosis.Y
fBodyAccJerk.skewness.Z
fBodyAccJerk.kurtosis.Z
fBodyAccJerk.bandsEnergy.1.8
fBodyAccJerk.bandsEnergy.9.16
fBodyAccJerk.bandsEnergy.17.24
fBodyAccJerk.bandsEnergy.25.32
fBodyAccJerk.bandsEnergy.33.40
fBodyAccJerk.bandsEnergy.41.48
fBodyAccJerk.bandsEnergy.49.56
fBodyAccJerk.bandsEnergy.57.64
fBodyAccJerk.bandsEnergy.1.16
fBodyAccJerk.bandsEnergy.17.32
fBodyAccJerk.bandsEnergy.33.48
fBodyAccJerk.bandsEnergy.49.64
fBodyAccJerk.bandsEnergy.1.24
fBodyAccJerk.bandsEnergy.25.48
fBodyGyro.mean.X
fBodyGyro.mean.Y
fBodyGyro.mean.Z
fBodyGyro.std.X
fBodyGyro.std.Y
fBodyGyro.std.Z
fBodyGyro.mad.X
fBodyGyro.mad.Y
fBodyGyro.mad.Z
fBodyGyro.max.X
fBodyGyro.max.Y
fBodyGyro.max.Z
fBodyGyro.min.X
fBodyGyro.min.Y
fBodyGyro.min.Z
fBodyGyro.sma
fBodyGyro.energy.X
fBodyGyro.energy.Y
fBodyGyro.energy.Z
fBodyGyro.iqr.X
fBodyGyro.iqr.Y
fBodyGyro.iqr.Z
fBodyGyro.entropy.X
fBodyGyro.entropy.Y
fBodyGyro.entropy.Z
fBodyGyro.maxInds.X
fBodyGyro.maxInds.Y
fBodyGyro.maxInds.Z
fBodyGyro.meanFreq.X
fBodyGyro.meanFreq.Y
fBodyGyro.meanFreq.Z
fBodyGyro.skewness.X
fBodyGyro.kurtosis.X
fBodyGyro.skewness.Y
fBodyGyro.kurtosis.Y
fBodyGyro.skewness.Z
fBodyGyro.kurtosis.Z
fBodyGyro.bandsEnergy.1.8
fBodyGyro.bandsEnergy.9.16
fBodyGyro.bandsEnergy.17.24
fBodyGyro.bandsEnergy.25.32
fBodyGyro.bandsEnergy.33.40
fBodyGyro.bandsEnergy.41.48
fBodyGyro.bandsEnergy.49.56
fBodyGyro.bandsEnergy.57.64
fBodyGyro.bandsEnergy.1.16
fBodyGyro.bandsEnergy.17.32
fBodyGyro.bandsEnergy.33.48
fBodyGyro.bandsEnergy.49.64
fBodyGyro.bandsEnergy.1.24
fBodyGyro.bandsEnergy.25.48
fBodyAccMag.mean
fBodyAccMag.std
fBodyAccMag.mad
fBodyAccMag.max
fBodyAccMag.min
fBodyAccMag.sma
fBodyAccMag.energy
fBodyAccMag.iqr
fBodyAccMag.entropy
fBodyAccMag.maxInds
fBodyAccMag.meanFreq
fBodyAccMag.skewness
fBodyAccMag.kurtosis
fBodyAccJerkMag.mean
fBodyAccJerkMag.std
fBodyAccJerkMag.mad
fBodyAccJerkMag.max
fBodyAccJerkMag.min
fBodyAccJerkMag.sma
fBodyAccJerkMag.energy
fBodyAccJerkMag.iqr
fBodyAccJerkMag.entropy
fBodyAccJerkMag.maxInds
fBodyAccJerkMag.meanFreq
fBodyAccJerkMag.skewness
fBodyAccJerkMag.kurtosis
fBodyGyroMag.mean
fBodyGyroMag.std
fBodyGyroMag.mad
fBodyGyroMag.max
fBodyGyroMag.min
fBodyGyroMag.sma
fBodyGyroMag.energy
fBodyGyroMag.iqr
fBodyGyroMag.entropy
fBodyGyroMag.maxInds
fBodyGyroMag.meanFreq
fBodyGyroMag.skewness
fBodyGyroMag.kurtosis
fBodyGyroJerkMag.mean
fBodyGyroJerkMag.std
fBodyGyroJerkMag.mad
fBodyGyroJerkMag.max
fBodyGyroJerkMag.min
fBodyGyroJerkMag.sma
fBodyGyroJerkMag.energy
fBodyGyroJerkMag.iqr
fBodyGyroJerkMag.entropy
fBodyGyroJerkMag.maxInds
fBodyGyroJerkMag.meanFreq
fBodyGyroJerkMag.skewness
fBodyGyroJerkMag.kurtosis
angle.tBodyAccMean.gravity
angle.tBodyAccJerkMean.gravityMean
angle.tBodyGyroMean.gravityMean
angle.tBodyGyroJerkMean.gravityMean
angle.X.gravityMean
angle.Y.gravityMean
angle.Z.gravityMean



#License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
