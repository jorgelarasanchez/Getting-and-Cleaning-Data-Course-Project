# GETTING AND CLEANING DATA COURSE PROJECT

## INTRODUCTION

This repository contains the necessary files to perform the work associated with the fourth week of the coursera course Getting and Cleaning Data

## FILES 

CodeBook.md 

Indicates all calculated variables and summaries, together with units, and any other relevant information.

run_analysis.R

This R script performs the requested step in the fourth week of the course exam. For more information on source data see CodeBook.md

Download and unzip source data

Merges the training and the test sets to create one data set.

Extracts only the measurements on the mean and standard deviation for each measurement.

Uses descriptive activity names to name the activities in the data set

Appropriately labels the data set with descriptive variable names.

From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

tidy_data_set.txt 

File containing data set ordered with the average of each variable for each activity and each subject. Obtained after executing script R "run_analysis.R"

## STEPS TO FOLLOW TO RUN SCRIPT R

Run the script in the local folder of your choice. The script will download the source data by creating the "UCI HAR Dataset" folder. Perform the requested steps in the exam and create the requested file "tidy_data_set.txt" in the same folder as the result.
