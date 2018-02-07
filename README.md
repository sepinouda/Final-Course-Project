Readme

The files included in this repository are as follows:
- README.md, explains how the dataset is created and what files are included in this repository.
- tidy_data.txt, is the final dataset.
- CodeBook.md, the code book, describes the data, variables and transformations used to generate the data.
- run_analysis.R, the R script used to generate the data set 



Creating dataset 

The R script run_analysis.R can be used to create the data set. It retrieves the source data set and transforms it to produce the final data set by implementing the following steps:
- Read data.
- Merge the training and the test sets to create one data set.
- Extract only the measurements on the mean and standard deviation for each measurement.
- Use descriptive activity names to name the activities in the data set.
-	Appropriately label the data set with descriptive variable names.
- Create a second, independent tidy set with the average of each variable for each activity and each subject.
- Write the data set to the tidy_data.txt file.



The tidy_data.txt in this repository was created by running the run_analysis.R script using R. This script requires the dplyr package 

