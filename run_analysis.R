# 1.Merges the training and the test sets to create one data set.

# merge training data
x_train <- read.table("./train/X_train.txt", comment.char="")
sub_train <- read.table("./train/subject_train.txt", col.names=c("subject"))
y_train <- read.table("./train//y_train.txt", col.names=c("activity"))

train_data <- cbind(x_train, sub_train, y_train)

# merge test data
x_test <- read.table("./test/X_test.txt", comment.char="")
sub_test <- read.table ("./test/subject_test.txt", col.names=c("subject"))
y_test <- read.table("./test/y_test.txt", col.names=c("activity"))

test_data <- cbind(x_test, sub_test, y_test)

# merge training and test data
all_data <- rbind(train_data, test_data)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# read features
feature_list <- read.table("./features.txt", col.names = c("id", "name"))
features <- c(as.vector(feature_list[, "name"]), "subject", "activity")

# filter features with mean or std in the name
filtered_feature_ids <- grepl("mean|std|subject|activity", features) & !grepl("meanFreq", features)
filtered_data = all_data[, filtered_feature_ids]

# 3. Uses descriptive activity names to name the activities in the data set

act_label <- read.table("./activity_labels.txt", col.names=c("id", "name"))

for (i in 1:nrow(act_label)) {
    filtered_data$activity[filtered_data$activity == act_label[i, "id"]] <- as.character(act_label[i, "name"])
}

# 4. Appropriately labels the data set with descriptive variable names.

# make feature names more readble
filtered_feature_names <- features[filtered_feature_ids]
filtered_feature_names <- gsub("\\(\\)", "", filtered_feature_names)
filtered_feature_names <- gsub("Acc", "-acceleration", filtered_feature_names)
filtered_feature_names <- gsub("Mag", "-Magnitude", filtered_feature_names)
filtered_feature_names <- gsub("^t(.*)$", "\\1-time", filtered_feature_names)
filtered_feature_names <- gsub("^f(.*)$", "\\1-frequency", filtered_feature_names)
filtered_feature_names <- gsub("(Jerk|Gyro)", "-\\1", filtered_feature_names)
filtered_feature_names <- gsub("BodyBody", "Body", filtered_feature_names)
filtered_feature_names <- tolower(filtered_feature_names)

# assign names to features
names(filtered_data) <- filtered_feature_names

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# create tidy data set
tidy_data <- tbl_df(filtered_data) %>% group_by(subject, activity) %>%
            summarise_each(funs(mean)) %>% gather(measurement, mean, -activity, -subject)

# Save tidy data into file
write.table(tidy_data, file="./tidy_data.txt", row.name=FALSE)
