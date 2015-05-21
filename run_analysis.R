## Step 1: Merges the training and the test sets to create one data set.

## First extract the train info and test info separately
train_data <- read.table("./train/X_train.txt")
train_activities <- read.table("./train/y_train.txt")
train_subjects <- read.table("./train/subject_train.txt")

test_data <- read.table("./test/X_test.txt")
test_activities <- read.table("./test/y_test.txt")
test_subjects <- read.table("./test/subject_test.txt")

## Then merge the extracted info
data <- rbind(train_data, test_data)
activities <- rbind(train_activities, test_activities)
subjects <- rbind(train_subjects, test_subjects)

## Step 2: Extracts only the measurements on the mean and 
## standard deviation for each measurement. 

## Use the features.txt file as a key to extract only the Mean & Std columns
features <- read.table("features.txt")
features_key <- grep("-(mean|std)\\(\\)", features[,2])

data_extracted <- data[,features_key]

## Use the features_key to rename the data_extracted columns
names(data_extracted) <- features[features_key, 2]

## Step 3: Uses descriptive activity names to name the activities in the data set.

## Use the activity_labels.txt as a template for the activity names
activity_names <- read.table("activity_labels.txt")
activities[,1] <- activity_names[activities[,1],2]

## Step 4: Appropriately labels the data set with descriptive variable names.

## Give the activity column a name
names(activities) <- "activity"

## Give the subject column a name
names(subjects) <- "subject"

## Finally combine all the data frames into a polished data frame
polished_data <- cbind(activities, subjects, data_extracted)
write.table(polished_data, "polished_data.txt", row.name=FALSE)

## Step 5: From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

## Use ddply to apply colMeans to the polished data using the subject
## and activity variables to split the data frame
data_means <- ddply(polished_data, .(subject, activity), function(x) 
                          colMeans(x[, 3:68]))
write.table(data_means, "data_means.txt", row.name=FALSE)