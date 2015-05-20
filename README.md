
## Class: Getting-and-Cleaning-Data-Project
## Author: Pat Jerus
### Date Last Revised: May 19, 2015

## Ojectives
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Project Input Data/Samsung data 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Data files were downloaded from here and have to be unpacked to the same local directory as the R local working directory where the script will execute.

```
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
```

## File name for the R Program is:
```
runs_analysis.R
```

## Libraries used in RStudio
```{r}
libary(dplyr)
libary(data.table)
library(reshape2)
```
## grab and assign to var the observations in features.txt
```{r}
feats <- read.table("./UCI HAR Dataset/features.txt")
feats <- feats[,2]
```
## grab activity_labels.txt file values and assign to variables
```{r}
act_lbls <- read.table("./UCI HAR Dataset/activity_labels.txt")
act_lbls <- act_lbls[,2]
```
## Load the test train and subject data files
```{r}
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt")
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
```
## set variable names for the datasets loaded above
```{r}
names(test_x) <- feats
names(train_x) <- feats
names(test_subject) <- "subject"
names(train_subject) <- "subject"
```
## create a description for the y activities in both the test and train y sets
```{r}
test_y[,2] <- act_lbls[test_y[,1]]
train_y[,2] <- act_lbls[train_y[,1]]
```
## label the variables in both y sets
```{r}
names(test_y) <-  c("ActivityID", "ActivityDESC")
names(train_y) <-  c("ActivityID", "ActivityDESC")
```
## merge the sets
```{r}
merged_x <- rbind(test_x, train_x)
merged_y <- rbind(test_y, train_y)
merged_subject <- rbind(test_subject, train_subject)
```

## find the variables that contain std and mean and reduce the merge_x data to only include those variables
```{r}
targetvar <- grepl("mean|std", feats)
targeted_x <- merged_x[,targetvar]
```
## assemble all sets
```{r}
alltidy <- cbind(merged_subject, merged_y, targeted_x)
```
## melt and casting alltidy to get the avg and designate the id field
### "subject", "ActivityID", "ActivityDESC" are all used as key ID variables for dcast to run averages off of the rest of the dataset.
```{r}
meltvars <- setdiff(colnames(alltidy), c("subject", "ActivityID", "ActivityDESC"))
alltidy.melted <- melt(alltidy, id = c("subject", "ActivityID", "ActivityDESC"), measure.vars = meltvars)
finaltidy <- dcast(alltidy.melted, subject + ActivityDESC ~ variable, mean)
```
##write it to a file
```{r}
write.table(finaltidy, "tidyavg.txt", row.names = FALSE)
```
