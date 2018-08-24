library(dplyr)

## The working directory where the files are stored is defined

	wd<-"C:/Users/XYZ/Desktop/DS_exercise/C3/Wk4/UCI HAR Dataset"
	setwd(wd)

## The .txt files are read and stored in appropriate variable names

	features<-read.table("features.txt")
	activity<-read.table("activity_labels.txt")

	X_test<-read.table("./test/X_test.txt")
	y_test<-read.table("./test/y_test.txt")
	subject_test<-read.table("./test/subject_test.txt")

	X_train<-read.table("./train/X_train.txt")
	y_train<-read.table("./train/y_train.txt")
	subject_train<-read.table("./train/subject_train.txt")

## The variables featname and activname are created to store the descriptive
## column names for the features and activities respectively. 

	featname<-as.vector(features[,2])
	activname<-as.vector(activity[,2])

## The subjects, activities and variables are combined for the test and train data set.

	test_table<-cbind(subject_test, y_test, X_test)
	train_table<-cbind(subject_train, y_train, X_train)

## The test and train data set are merged to create one data set.

	summary_tbl<-rbind(test_table, train_table)
	colnames(summary_tbl)<-c("Subject", "Activity", featname)

## The integer activity is appropriately assigned the descriptive activity name.

	y_label<-vector(mode="character", length = length(summary_tbl[,2]))
		for(i in 1:length(y_label)){y_label[i]<-activname[summary_tbl[i,2]]}

	summary_tbl$Activity<-y_label

## The duplicated column names are removed for dplyr commands to work.

	summary_tbl<-summary_tbl[,!duplicated(colnames(summary_tbl))]

## Only the measurements on the mean and standard deviation are extracted

	summary_tbl<-select(summary_tbl,"Subject","Activity",contains("mean()"),contains("std()"))

## An independent data set is created with the average of each variable for each activity
## and each subject.

	tidy_avg<-aggregate(.~(Activity+Subject), summary_tbl, mean)

## Finally, a tidy data set is written into a file.
 
	write.table(tidy_avg, file="tidy_data.txt", row.names=FALSE)