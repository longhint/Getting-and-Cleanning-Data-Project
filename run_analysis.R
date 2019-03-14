library(dplyr)

# 1.1read train data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
Sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
Sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# 1.2read data description
variable_names <- read.table("./UCI HAR Dataset/features.txt")

# Read activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
# 1.3 Merging all data in one set   
XMerged <- rbind(X_test, X_train)
YMerged <- rbind(Y_test, Y_train)
SMerged<- rbind(Sub_test, Sub_train)
# 2. Extracting only the measurements on the mean and standard deviation for each measurement 
variable_names[grep("mean\\(\\)|std\\(\\)", variable_names[,2]),] -> Selected_variable
XMerged[,v2[,1]]-> Xtotal
# 3. Using descriptive activity names to name the activities in the data set
colnames(YMerged) <- "activity"
YMerged$activitylabel <- factor(YMerged$activity, labels = as.character(activity_labels[,2]))
# 4. Appropriately labeling the data set with descriptive variable names   

descriptive_activity_label <- YMerged[,-1]
variable_names[Selected_variable[,1],2] -> colnames(Xtotal)
colnames(SMerged)<- "Subject"

# 5. Creating a second, independent tidy data set with the average of each variable for each activity and each subject
Totaldata<- cbind(SMerged,descriptive_activity_label,Xtotal)
Total_mean<-Totaldata %>% group_by(descriptive_activity_label, Subject) %>% summarize_each(funs(mean)) 
write.table(Total_mean, file = "./UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE)
