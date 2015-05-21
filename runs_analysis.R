## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement. 
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names. 
## From the data set in step 4, creates a second, independent tidy data 
## set with the average of each variable for each activity and each subject.

library(dplyr)
library(data.table)
library(reshape2)

## grab and assign to var the features.txt
feats <- read.table("./UCI HAR Dataset/features.txt")
feats <- feats[,2]

## grab activity_labels.txt file values and assign to var
act_lbls <- read.table("./UCI HAR Dataset/activity_labels.txt")
act_lbls <- act_lbls[,2]

## Load the test train and subject data files
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt")
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## set variable names for tables
names(test_x) <- feats
names(train_x) <- feats
names(test_subject) <- "subject"
names(train_subject) <- "subject"

## create a description for the y activities in both the test and train y sets
test_y[,2] <- act_lbls[test_y[,1]]
train_y[,2] <- act_lbls[train_y[,1]]

## label the variables in both y sets
names(test_y) <-  c("ActivityID", "ActivityDESC")
names(train_y) <-  c("ActivityID", "ActivityDESC")

## merge the sets
merged_x <- rbind(test_x, train_x)
merged_y <- rbind(test_y, train_y)
merged_subject <- rbind(test_subject, train_subject)

##reduce the merged_x set to only the std and mean variables

## find the variables that contain std and mean
targetvar <- grepl("mean|std", feats)
targeted_x <- merged_x[,targetvar]

## assemble all sets
alltidy <- cbind(merged_subject, merged_y, targeted_x)

## melt and casting alltidy to get the avg and designate the id field
meltvars <- setdiff(colnames(alltidy), c("subject", "ActivityID", "ActivityDESC"))
alltidy.melted <- melt(alltidy, id = c("subject", "ActivityID", "ActivityDESC"), measure.vars = meltvars)
finaltidy <- dcast(alltidy.melted, subject + ActivityDESC ~ variable, mean)

##write it to a file
write.table(finaltidy, "tidyavg.txt", row.names = FALSE)
