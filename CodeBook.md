**Data**


The tidy_data.txt data file is a text file, containing space-separated values.
The first row contains the names of the variables.
Variables 
For each subject and activity there are 79 mean signal measurements in each row.
-	Subject : each subject is identified with a number ranging from 1 to 30.
-	Activity: is identified with 6 different values:

    o	WALKING
    
    o	WALKING_UPSTAIRS
    
    o	WALKING_DOWNSTAIRS
    
    o	SITTING
    
    o	STANDING
    
    o	LAYING
    
    
</h2 **Measurements**>

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation 

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values. 

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean

**Transformations**

The data is processed using the following transformations:
-	The training and test sets were merged to create one data set.
- The measurements on the mean and standard deviation (i.e. labels which contained strings mean and std) were extracted for each measurement.
- Descriptive activity names substituted activity identifiers.
- Applying the following conditions, the variable names were replaced with descriptive variable names:

    o	Special characters were removed
    
    o	The labels starting with f and t changed to frequencyDomain and timeDomain respectively.
    
    o	Acc, Gyro, Mag, Freq, mean, and std were replaced by Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and StandardDeviation respectively.
    
    o	BodyBody replaced by Body.
    
-	From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

