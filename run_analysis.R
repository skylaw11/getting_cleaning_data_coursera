#Reading all data from UCI HAR Dataset
activity_labels <- read.table("C:/Users/skylaw/Desktop/study/Coursera-Data/R-Programming/week3_proj/UCI HAR Dataset/activity_labels.txt")
features <- read.table("C:/Users/skylaw/Desktop/study/Coursera-Data/R-Programming/week3_proj/UCI HAR Dataset/features.txt")

#Reading all data from train folder
X_train <- read.table("C:/Users/skylaw/Desktop/study/Coursera-Data/R-Programming/week3_proj/UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("C:/Users/skylaw/Desktop/study/Coursera-Data/R-Programming/week3_proj/UCI HAR Dataset/train/y_train.txt")
sub_train <- read.table("C:/Users/skylaw/Desktop/study/Coursera-Data/R-Programming/week3_proj/UCI HAR Dataset/train/subject_train.txt")

#Reading all data from test folder
X_test <- read.table("C:/Users/skylaw/Desktop/study/Coursera-Data/R-Programming/week3_proj/UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("C:/Users/skylaw/Desktop/study/Coursera-Data/R-Programming/week3_proj/UCI HAR Dataset/test/y_test.txt")
sub_test <- read.table("C:/Users/skylaw/Desktop/study/Coursera-Data/R-Programming/week3_proj/UCI HAR Dataset/test/subject_test.txt")



#Columns names for tests and train sets are the same since the subject, activities and features are the same
#Assigning column names for the train set
colnames(X_train) = features[,2]
colnames(Y_train) = "act_id"
colnames(sub_train) = "sub_id"

#Assigning column names for the test set
colnames(X_test) = features[,2]
colnames(Y_test) = "act_id"
colnames(sub_test) = "sub_id"

#Assigning column name for activity_labels
colnames(activity_labels) = c("act_id", "act_type")

###############################################################
#Merges the training and the test sets to create one data set.#
###############################################################

merge_train <- cbind(sub_train, Y_train, X_train)
merge_test <- cbind(sub_test, Y_test, X_test)
dat_merge <- rbind(merge_test,merge_train)

########################################################################################
#Extracts only the measurements on the mean and standard deviation for each measurement#
########################################################################################
#Finding the measurements with mean and standard deviation made easy using grepl command. 
#It allows the user to find the column name with mean and standard deviation names on it. 

#Creating a dataframe with activity id, subject id, mean and standard deviation columns only
meas_std_mean <- (grepl("act_id|sub_id|mean|std", colnames(dat_merge)))
mean_std_dat <- dat_merge[meas_std_mean]

########################################################################
#Uses descriptive activity names to name the activities in the data set#
########################################################################
#merging the new dataset to the activity_label.txt to match the activity types
dat_acts <- merge(mean_std_dat,activity_labels, by = "act_id")

##################################################################################################################
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject#
##################################################################################################################
library(dplyr)
group_tidy_dat <- group_by(dat_acts,sub_id,act_type) #group the data activities by subject id and activity id
mean_tidy_dat <- summarise_all(group_tidy_dat, funs(mean)) #summarize data and apply mean to get the average

#Write the new tidy output to a new file
write.table(mean_tidy_dat, file = "C:/Users/skylaw/Desktop/study/Coursera-Data/R-Programming/week3_proj/tidy_dat_set.txt",row.names = FALSE, quote = FALSE)

