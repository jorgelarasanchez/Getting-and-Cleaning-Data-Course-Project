## For point 5 the package dplyr is used
# If it is not installed... install.packages("dplyr")

library(dplyr)

# File URL to download

fileURL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
dataFileZip <- "./getdata_UCI_HAR_Dataset.zip"

# Download the file
if (file.exists(dataFileZip) == FALSE) {
  download.file(fileURL,destfile=dataFileZip ,method="curl")
  # Unzip the file
    unzip(zipfile=dataFileZip ,exdir="./")
  }
########################################################################################################
## 1. Merges the training and the test sets to create one data set:
########################################################################################################
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

# Combines data table (train, test) by rows
x_train_test <- rbind(x_train, x_test)
y_train_test <- rbind(y_train, y_test)
s_train_test <- rbind(subject_train, subject_test) 

# set names to variables

names(s_train_test) <- c("subject")
names(y_train_test) <- c("activity_id") 

# Read features labels

features <- read.table("./UCI HAR Dataset/features.txt")
features_labels <- features$V2
names(x_train_test) <- features_labels

# Merge columns to get the data frame dataset for all data

cbin_s_y <- cbind(s_train_test,y_train_test)
dataset <- cbind(x_train_test,cbin_s_y)

#View(dataset)

########################################################################################################
## 2. Extracts only the measurements on the mean and standard deviation for each measurement:
########################################################################################################

# Search for matches to argument mean or standard deviation

grep_features <- features_labels[grep("mean\\(\\)|std\\(\\)", features_labels)]

# add to grep_features "subject" and "activity"  to later take subset

select_column<-c(as.character(grep_features), "subject", "activity_id" )
dataset_mean_sd <- subset(dataset,select=select_column)

#View(dataset_mean_sd)

########################################################################################################
## 3. Uses descriptive activity names to name the activities in the data set
########################################################################################################

# Read activity_labels

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt") 

# set names to variables

names(activity_labels) <- c("activity_id","activity")

# Add the activity label to the dataset using a merge on activity_id

dataset_mean_sd <- merge(x=dataset_mean_sd, y=activity_labels, by="activity_id")

# remove activity_id

dataset_mean_sd <- dataset_mean_sd[,-1]

#View(dataset_mean_sd)

########################################################################################################
## 4.Appropriately labels the data set with descriptive variable names.
########################################################################################################

# Replace prefix t 

names(dataset_mean_sd) <- gsub("^t", "time", names(dataset_mean_sd))

# Replace Acc

names(dataset_mean_sd) <- gsub("Acc", "Accelerometer", names(dataset_mean_sd))

# Replace Gyro

names(dataset_mean_sd) <- gsub("Gyro", "Gyroscope", names(dataset_mean_sd))

# Replace prefix f 

names(dataset_mean_sd) <- gsub("^f", "frequency", names(dataset_mean_sd))

# Replace Mag

names(dataset_mean_sd) <- gsub("Mag", "Magnitude", names(dataset_mean_sd))

# Replace BodyBody

names(dataset_mean_sd) <- gsub("BodyBody", "Body", names(dataset_mean_sd))

#Remove parentheses

names(dataset_mean_sd) <- gsub("\\(|\\)", "", names(dataset_mean_sd)) 

# Replace "-"

names(dataset_mean_sd) <- gsub("-", "_", names(dataset_mean_sd)) 

#View(dataset_mean_sd)

########################################################################################################
## 5 From the data set in step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject.
########################################################################################################

# Group the data by subject and activity and calculate the mean for all features using a Dplyr function. 
tidy_data_set <- dataset_mean_sd %>% 
                    group_by(subject, activity) %>%
                         summarise_each(funs(mean))

#View(tidy_data_set)

# Create tidy data set file
write.table(tidy_data_set, file="tidy_data_set.txt", row.names=FALSE, col.names=TRUE, sep="\t")

