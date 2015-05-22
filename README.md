# Course Project - UCI HAR Dataset Analysis
=================================

## Introduction

This repository contains the R scripts to merge and tidy the [UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Requirements

Write R script that does the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## R code

The R code is available in the [run_analysis.R](run_analysis.R) file. After sourcing the R code, it will generate a txt file named tidy_data.txt which includes the tidy data set as the requirements required.

## Output

tidy_data.txt contains mean and standard deviation for each measurements from the training and test data.

## Code Book

The [Code Book](Codebook.md) describes the variables, summaries, units, and any other relevant information.