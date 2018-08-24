Code Book describing the variables: (In order of occurrence)

1.	wd: stores the path of the working directory.
2.	features: reads and stores feature.txt file as a table
3.	activity: reads and stores activity_labels.txt file as a table
4.	x_test: reads and stores X_test.txt file as a table
5.	y_test: reads and stores y_test.txt file as a table
6.	subject_test: reads and stores subject_test.txt file as a table
7.	x_train: reads and stores X_train.txt file as a table
8.	y_train: reads and stores y_train.txt file as a table
9.	subject_train: reads and stores subject_train.txt file as a table
10.	featname: stores the feature names as a vector
11.	activname: stores the activity names as a vector.
12.	test_table: A table with the subject, activity and test data combined. 
13.	train_table: A table with the subject, activity and train data combined. 
14.	summary_table: A table with merged data from test and train data set.
15.	y_label: a character vector which converts the integer activity into descriptive name. 
16.	tidy_avg: A tidy data set extracted from summary_tbl containing average of measurements for each activity and each subject.
