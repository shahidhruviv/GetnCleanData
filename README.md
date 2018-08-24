This file explains how the script “run_analysis.R” works.

This script is used to read, work with and clean the data obtained from the accelerometers from the Samsung Galasxy S smartphone.
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The script performs following functions (in the same order):
1.	Reads the .txt files containing the data and information related to descriptive names for the variables and activities.
It stores these data into appropriate variable names used for later operations.
2.	Combines the subject, activities and the values for both test and train data set.
It then merges both these into one data set.
3.	Provides appropriate column names for describing the variables in the data set.
4.	Gives descriptive activity names.
5.	 Extracts the columns with mean and standard deviation for each of the variables.
6.	Creates a tidy data set which averages each of the variables for each subject and each activity.
7.	Writes a tidy data text file.
