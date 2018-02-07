################ Download data ################ 
################  The data is downloaded and unzipped into working directory
################ Load Data Files ###################
#Train files
TrainSubjects <- read.table("./train/subject_train.txt")
TrainValues <- read.table("./train/X_train.txt")
TrainActivity <- read.table("./train/y_train.txt")

#Test files
TestSubjects <- read.table("./test/subject_test.txt")
TestValues <- read.table("./test/X_test.txt")
TestActivity <- read.table("./test/y_test.txt")

#Features
features <- read.table("features.txt", as.is = TRUE)

#Activity labels
activities <- read.table( "activity_labels.txt")
colnames(activities) <- c("Id", "Label")

################ Task 1 - Merge Data ################
Train <- cbind(TrainSubjects, TrainActivity, TrainValues)
Test <- cbind(TestSubjects, TestActivity, TestValues)
Merge <- rbind(Train, Test)
colnames(Merge) <- c("Subject", "Activity", features[,2])

################ Extracts measurements on the mean and standard deviation for each measurement ################
columns<- grepl("Subject|Activity|mean|std", colnames(Merge))
Merge <- Merge[, columns]

################ Uses descriptive activity names to name the activities in the data set  ################ 
Merge$Activity <- factor(Merge$Activity, levels = activities[, 1], labels = activities[, 2])

################ Appropriately labels the data set with descriptive variable names ################
MergeColNames <- colnames(Merge)
MergeColNames <- gsub("[\\(\\)-]", "", MergeColNames)

MergeColNames <- gsub("^f", "FrequencyDomain", MergeColNames)
MergeColNames <- gsub("^t", "TimeDomain", MergeColNames)
MergeColNames <- gsub("Acc", "Accelerometer", MergeColNames)
MergeColNames <- gsub("Gyro", "Gyroscope", MergeColNames)
MergeColNames <- gsub("Mag", "Magnitude", MergeColNames)
MergeColNames <- gsub("Freq", "Frequency", MergeColNames)
MergeColNames <- gsub("mean", "Mean", MergeColNames)
MergeColNames <- gsub("std", "Standard Deviation", MergeColNames)

MergeColNames <- gsub("BodyBody", "Body", MergeColNames)
colnames(Merge) <- MergeColNames


################ From the data set in step 4, creates a second, independent tidy data set ################
################ with the average of each variable for each activity and each subject. ################
MeanMerge <- Merge %>% group_by(Subject, Activity) %>% summarise_all(mean)
write.table(MeanMerge, "tidy_data.txt", row.names = FALSE, quote = FALSE)
