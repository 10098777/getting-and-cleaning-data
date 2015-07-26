##set the working directory and download the data
setwd("E:statistics/coursera/repository/gettingandcleaningdata/project")
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="project.zip")
unzip("project.zip")
##load the training and test sets into R
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
##get the information about the X_train and X_test datasets
str(X_train)
str(X_test)
##merge the train and test datasets
merge<-rbind(X_train,X_test)
##Extract only the measurements on the mean and standard deviation for each measurement
features<-read.table("./UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
features_selected<-features[grep("mean\\(\\)|std\\(\\)",features$V2,perl=TRUE),]
str(features_selected)
merge_selected<-merge[,features_selected$V1]
##Use descriptive activity names to name the activities in the data set
activity<-read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors=TRUE)
str(activity)
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
activitymerge<-rbind(y_train,y_test)
activitymerge$V1<-factor(activitymerge$V1,labels=activity$V2)
activity_merge_selected<-cbind(activitymerge,merge_selected)
##First add a column describing the subjects,then appropriately labels the data set with descriptive variable names
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_merge<-rbind(subject_train,subject_test)
subject_activity_merge_selected<-cbind(subject_merge,activity_merge_selected)
names(subject_activity_merge_selected)<-c("subject","activity",features_selected$V2)
##create a second, independent tidy data set with the average of each variable for each activity and each subject
library(reshape2)
melt_final_dataset<-melt(subject_activity_merge_selected,id=c("subject","activity"),measure.vars=features_selected$V2)
mean_final_dataset<-dcast(melt_final_dataset,subject+activity~variable,mean)
##store the mean_final_dataset into a .txt file
write.table(mean_final_dataset,file="mean.txt",row.names=FALSE,col.names=TRUE)
##view the tidy dataset in R
mean<-read.table("./mean.txt",header=TRUE)
mean
