Code Book for UCI HAR Dataset
=================================

## Data source

The data has been downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variable name cleanup

The variable names are cleaned up using the following transformations, and all variable names are converted into lowercases.

```R
filtered_feature_names <- gsub("\\(\\)", "", filtered_feature_names)
filtered_feature_names <- gsub("Acc", "-acceleration", filtered_feature_names)
filtered_feature_names <- gsub("Mag", "-Magnitude", filtered_feature_names)
filtered_feature_names <- gsub("^t(.*)$", "\\1-time", filtered_feature_names)
filtered_feature_names <- gsub("^f(.*)$", "\\1-frequency", filtered_feature_names)
filtered_feature_names <- gsub("(Jerk|Gyro)", "-\\1", filtered_feature_names)
filtered_feature_names <- gsub("BodyBody", "Body", filtered_feature_names)
```

## Description of the UCI HAR variables

In the tidy data set, the following 4 columns are provided:

- subject
- activity
- measurement
- mean

### subject

A numeric identifier (1-30) of the subject.

### activity

The activity name with the following possible values.

- 'Laying'
- 'Sitting'
- 'Standing'
- 'Walking'
- 'Walking_downstairs'
- 'Walking_upstairs'

### measurement

The name of the measurement for which the mean is calculated. This variable contains one of the following 66 variables.

- body-acceleration-jerk-magnitude-mean-frequency
- body-acceleration-jerk-magnitude-mean-time
- body-acceleration-jerk-magnitude-std-frequency
- body-acceleration-jerk-magnitude-std-time
- body-acceleration-jerk-mean-x-frequency
- body-acceleration-jerk-mean-x-time
- body-acceleration-jerk-mean-y-frequency
- body-acceleration-jerk-mean-y-time
- body-acceleration-jerk-mean-z-frequency
- body-acceleration-jerk-mean-z-time
- body-acceleration-jerk-std-x-frequency
- body-acceleration-jerk-std-x-time
- body-acceleration-jerk-std-y-frequency
- body-acceleration-jerk-std-y-time
- body-acceleration-jerk-std-z-frequency
- body-acceleration-jerk-std-z-time
- body-acceleration-magnitude-mean-frequency
- body-acceleration-magnitude-mean-time
- body-acceleration-magnitude-std-frequency
- body-acceleration-magnitude-std-time
- body-acceleration-mean-x-frequency
- body-acceleration-mean-x-time
- body-acceleration-mean-y-frequency
- body-acceleration-mean-y-time
- body-acceleration-mean-z-frequency
- body-acceleration-mean-z-time
- body-acceleration-std-x-frequency
- body-acceleration-std-x-time
- body-acceleration-std-y-frequency
- body-acceleration-std-y-time
- body-acceleration-std-z-frequency
- body-acceleration-std-z-time
- body-gyro-jerk-magnitude-mean-frequency
- body-gyro-jerk-magnitude-mean-time
- body-gyro-jerk-magnitude-std-frequency
- body-gyro-jerk-magnitude-std-time
- body-gyro-jerk-mean-x-time
- body-gyro-jerk-mean-y-time
- body-gyro-jerk-mean-z-time
- body-gyro-jerk-std-x-time
- body-gyro-jerk-std-y-time
- body-gyro-jerk-std-z-time
- body-gyro-magnitude-mean-frequency
- body-gyro-magnitude-mean-time
- body-gyro-magnitude-std-frequency
- body-gyro-magnitude-std-time
- body-gyro-mean-x-frequency
- body-gyro-mean-x-time
- body-gyro-mean-y-frequency
- body-gyro-mean-y-time
- body-gyro-mean-z-frequency
- body-gyro-mean-z-time
- body-gyro-std-x-frequency
- body-gyro-std-x-time
- body-gyro-std-y-frequency
- body-gyro-std-y-time
- body-gyro-std-z-frequency
- body-gyro-std-z-time
- gravity-acceleration-magnitude-mean-time
- gravity-acceleration-magnitude-std-time
- gravity-acceleration-mean-x-time
- gravity-acceleration-mean-y-time
- gravity-acceleration-mean-z-time
- gravity-acceleration-std-x-time
- gravity-acceleration-std-y-time
- gravity-acceleration-std-z-time

### mean

The mean of the measurements.
