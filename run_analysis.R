## Before running the script, please ensure the following:
## Download data from the url below
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## Unzip the data, thereby creating a folder 'UCI HAR Dataset'
## Set this folder as your working directory


## Loading required packages
library(plyr)
library(dplyr)
library(reshape2)


## Loading the necessary files into R

## Column and Row Labels
features <- read.table("features.txt",header=FALSE)
actlabels <- read.table("activity_labels.txt",header=FALSE)

## Training Data
subtrain <- read.table("./train/subject_train.txt",header=FALSE)
ytrain <- read.table("./train/y_train.txt",header=FALSE)
xtrain <- read.table("./train/x_train.txt",header=FALSE)

## Test Data
subtest <- read.table("./test/subject_test.txt",header=FALSE)
ytest <- read.table("./test/y_test.txt",header=FALSE)
xtest <- read.table("./test/x_test.txt",header=FALSE)


## Assign Column Labels to the Data
colnames(actlabels) <- c("activityID", "activitylabel")
colnames(subtrain) <- "subject"
colnames(ytrain) <- "activity"
colnames(xtrain) <- features[,2]
colnames(subtest) <- "subject"
colnames(ytest) <- "activity"
colnames(xtest) <- features[,2]


## Bind the Training Data
trainingdata <- cbind(subtrain, ytrain, xtrain)
## Bind the Test Data
testdata <- cbind(subtest, ytest, xtest)
## 1.Merge the training and the test sets to create one data set
alldata <- rbind(trainingdata, testdata)


## Identify and store column names containing "mean()" and "std()" in 'reqcol'
## +2 since first 2 columns are 'subject' and 'activity'
reqcol <- grep("(mean|std)\\(\\)", features[,2]) + 2
## Including the 'subject' and 'activity' columns 1 and 2
reqcol <- c(1,2,reqcol)
## Subsetting the required columns from 'alldata'
## 2.Extract only the measurements on the mean and standard deviation for each measurement
meanstddata <- alldata[,reqcol]


## Creating copy of 'alldata' for new dataset
labeleddata <- alldata
## Replacing the 'activity' column with 'actlabels' data as factors
## 3.Use descriptive activity names to name the activities in the data set
labeleddata$activity <- factor(alldata$activity, levels = actlabels[,1], labels = actlabels[,2])


## Creating copy of 'labeleddata' for new dataset
desdata <- labeleddata
## Storing column names of 'desdata' in 'coldata'
coldata <- colnames(desdata)
## Changing variable names stored in 'coldata'
## Removing the double 'Body'
coldata <- gsub("BodyBody", "Body", coldata)
## Removing special characters ( )
coldata <- gsub("[(]", "", coldata)
coldata <- gsub("[)]", "", coldata)
## Replacing - , with .
coldata <- gsub("-", ".", coldata)
coldata <- gsub(",", ".", coldata)
## Replacing 'angle' with 'angle.' for legibility
coldata <- gsub("angle", "angle.", coldata)
## 4.Appropriately label the data set with descriptive variable names
colnames(desdata) <- coldata


## Storing 'subject' column as a factor
desdata$subject <- as.factor(desdata$subject)
## Reshaping the data using 'melt' and 'dcast'
meltdata <- melt(desdata, id = c("subject", "activity"))
tidydata <- dcast(meltdata, subject + activity ~ variable, mean)
## Writing 'tidydata' into file 'tidy.txt'
## 5.From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject
write.table(tidydata, "tidy.txt", row.names = FALSE)