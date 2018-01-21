# Code Book for the Human Activity Recognition Using Smartphones Dataset Tidy Version (Coursera)

## This code book describes the data in tidy_dat_set.txt 

### Data Variables
There are two categories which the data was grouped.
*sub_id - Integer which pertains to the test subjects (1-30)
*act_type - Type of activity the subject performed (WALKING [1], WALKING_UPSTAIRS [2], WALKING_DOWNSTAIRS [3], SITTING[4], STANDING[5], LAYING[6]). 
This also points to the activity number of the activity type which it was categorize.
*mean and std - all other data were filtered to a mean and standard deviation of the data

### Data Measurements
The mean and std of the filtered data were categorized into two measurements. These vectors were obtained by averaging signals in a signal window sammple.
#### Time-domain signals
- tBodyAcc-mean()-X 
- tBodyAcc-mean()-Y 
- tBodyAcc-mean()-Z 
- tBodyAcc-std()-X 
- tBodyAcc-std()-Y 
- tBodyAcc-std()-Z 
- tGravityAcc-mean()-X 
- tGravityAcc-mean()-Y 
- tGravityAcc-mean()-Z 
- tGravityAcc-std()-X 
- tGravityAcc-std()-Y 
- tGravityAcc-std()-Z 
- tBodyAccJerk-mean()-X 
- tBodyAccJerk-mean()-Y 
- tBodyAccJerk-mean()-Z 
- tBodyAccJerk-std()-X 
- tBodyAccJerk-std()-Y 
- tBodyAccJerk-std()-Z 
- tBodyGyro-mean()-X 
- tBodyGyro-mean()-Y 
- tBodyGyro-mean()-Z 
- tBodyGyro-std()-X 
- tBodyGyro-std()-Y 
- tBodyGyro-std()-Z 
- tBodyGyroJerk-mean()-X 
- tBodyGyroJerk-mean()-Y 
- tBodyGyroJerk-mean()-Z 
- tBodyGyroJerk-std()-X 
- tBodyGyroJerk-std()-Y 
- tBodyGyroJerk-std()-Z 
- tBodyAccMag-mean() 
- tBodyAccMag-std() 
- tGravityAccMag-mean() 
- tGravityAccMag-std() 
-  tBodyAccJerkMag-mean() 
- tBodyAccJerkMag-std() 
- tBodyGyroMag-mean() 
- tBodyGyroMag-std() 
- tBodyGyroJerkMag-mean() 
- tBodyGyroJerkMag-std() 

#### Frequency-domain signals
- fBodyAcc-mean()-X 
- fBodyAcc-mean()-Y 
- fBodyAcc-mean()-Z 
- fBodyAcc-std()-X 
- fBodyAcc-std()-Y 
- fBodyAcc-std()-Z 
- fBodyAcc-meanFreq()-X 
- fBodyAcc-meanFreq()-Y 
- fBodyAcc-meanFreq()-Z 
- fBodyAccJerk-mean()-X 
- fBodyAccJerk-mean()-Y 
- fBodyAccJerk-mean()-Z 
- fBodyAccJerk-std()-X 
- fBodyAccJerk-std()-Y 
- fBodyAccJerk-std()-Z 
- fBodyAccJerk-meanFreq()-X 
- fBodyAccJerk-meanFreq()-Y 
- fBodyAccJerk-meanFreq()-Z 
- fBodyGyro-mean()-X 
- fBodyGyro-mean()-Y 
- fBodyGyro-mean()-Z 
- fBodyGyro-std()-X 
- fBodyGyro-std()-Y 
- fBodyGyro-std()-Z 
- fBodyGyro-meanFreq()-X 
- fBodyGyro-meanFreq()-Y 
- fBodyGyro-meanFreq()-Z 
- fBodyAccMag-mean() 
- fBodyAccMag-std() 
- fBodyAccMag-meanFreq() 
- fBodyBodyAccJerkMag-mean() 
- fBodyBodyAccJerkMag-std() 
- fBodyBodyAccJerkMag-meanFreq() 
- fBodyBodyGyroMag-mean() 
- fBodyBodyGyroMag-std() 
- fBodyBodyGyroMag-meanFreq() 
- fBodyBodyGyroJerkMag-mean() 
- fBodyBodyGyroJerkMag-std() 
- fBodyBodyGyroJerkMag-meanFreq() 

## File Source
The file was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip from coursera- Getting and Cleaning data Course Project
## Tidying of data file method
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
