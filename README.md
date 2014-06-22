TidyDataProject
===============

==================================================================
Tidy Dataset for Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
The initial dataset comes from
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


Work performed to the initial dataset:
======================================
1.	Merge the training and the test sets to create one data set.
2.	Extract only the measurements on the mean and standard deviation for each measurement. 
3.	Use descriptive activity names to name the activities in the data set
4.	Appropriately label the data set with descriptive variable names. 
5.	Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

Steps to obtain tidy dataset:
======================================
1.	Copy the initial training and the test datasets to the working directory in R program.
2.	Open run_analysis.R file in R
3.	Run the above file in R to obtain an “tidydata.txt” output text file of the tidy dataset
4.	 “tidydata.txt” text file should be located in the working directory of R program.

This repo includes the following files:
=========================================

- 'README.md

- run_analysis.R ': R script called run_analysis.R that the procedure of obtaining tidy dataset. 

- 'CodeBook.md: List of all variables, describe data and explain transformations or work that was performed to clean up the initial data.

