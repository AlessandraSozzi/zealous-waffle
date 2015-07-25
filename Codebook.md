---
title: "My Codebook"
author: "Alessandra Sozzi"
date: "25/07/2015"
output: "tidy_data.txt"
---

## Project Description
zealous-waffle is course project for the course Getting and Cleaning Data : https://www.coursera.org/course/getdata

##Study design and data processing

###Collection of the raw data
The data for the project can be found here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Notes on the original (raw) data 
No need to download the data, as it will be dowloaded automatically by the script.

##Creating the tidy datafile

###Guide to create the tidy data file
Run the script in you R console.

###Cleaning of the data
The script extract relevant columns and summarize theme. A description of the code in greater detail can be found in the README documnet here[https://github.com/AlessandraSozzi/zealous-waffle/blob/master/README.md]()

##Description of the variables in the tiny_data.txt file

The **tidy_data.txt** file contains 180 observations and 68 variables.

The first column of the dataset the 30 volunteers within an age bracket of 19-48 years who particpated at the experiment. 
Its range is from 1 to 30. 

The second column represent one of the six activities the each volunterr performed: `WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING` wearing a smartphone (Samsung Galaxy S II) on the waist.

The other features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

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

The data represent the average of each variable for each activity and each subject.
