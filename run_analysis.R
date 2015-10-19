#load data from web
url<-'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
destfile<-'data.zip'
download.file(url, destfile)

#extract data from zip
unzip(destfile)

#read file with features of data
ffile<-'./UCI HAR Dataset/features.txt'
features<-read.delim(ffile,header=FALSE,sep="", row.names = 1, as.is=TRUE)
#give names to feature data
names(features)<-c("feature")

#read file with activities labels
afile<-'./UCI HAR Dataset/activity_labels.txt'
activities<-read.delim(afile,header=FALSE,sep="", row.names = 1)
#give names to activities data
names(activities)<-c("activities")

#read test data set -> subject data -> y-test(activity) -> and features x-test
test.subject<-read.delim('./UCI HAR Dataset/test/subject_test.txt', header=FALSE)
test.activities<-read.delim('./UCI HAR Dataset/test/y_test.txt', header=FALSE)
test.features<-read.delim('./UCI HAR Dataset/test/X_test.txt', header=FALSE, sep="")
#set names for test data columns
names(test.subject)<-c("Subject")
names(test.activities)<-c("Activity")
names(test.features)<-t(features)
#column bind all train data set to one dataframe
test<-cbind(test.subject,test.activities,test.features)

#read train data set -> subject data -> y-train(activity) -> and features x-train
train.subject<-read.delim('./UCI HAR Dataset/train/subject_train.txt', header=FALSE)
train.activities<-read.delim('./UCI HAR Dataset/train/y_train.txt', header=FALSE)
train.features<-read.delim('./UCI HAR Dataset/train/X_train.txt', header=FALSE, sep="")
#set names for test data columns
names(train.subject)<-c("Subject")
names(train.activities)<-c("Activity")
names(train.features)<-t(features)
#column bind all train data set to one dataframe
train<-cbind(train.subject,train.activities,train.features)

#merge training set and test set into one dataframe
df<-rbind(train,test)

#name activities with descriptive name
df$Activity<-as.factor(activities[df$Activity,1])

#select all columns with means and standard deviations
columns<-grepl("(mean\\(|std\\()",names(df),perl=TRUE)
#leave activities and Subject columns in
columns[1]<-TRUE
columns[2]<-TRUE

df<-df[,columns]

#now update names to match course recommendations
columns<-names(df)
#make all lowercase
columns<-tolower(columns)
#remove brackets from names
columns<-gsub("\\(\\)","",columns)
#update t -> time
columns<-gsub("^t","time", columns)
#update f -> frequency
columns<-gsub("^f","frequency", columns)
#update acc -> accelerometer
columns<-gsub("acc","accelerometer", columns)
#update gyro -> gyroscope
columns<-gsub("gyro","gyroscope", columns)
#update std -> standarddeviation
columns<-gsub("std","standarddeviation", columns)
#update - -> ""
columns<-gsub("-","", columns)

names(df)<-columns

#now I group data by activity and subject for that I use dplyr, 
#then I average all variables
library(dplyr)
df_new<-group_by(df,subject,activity)%>%summarize_each(funs(mean))

#update column names to reflect that they were averaged
names(df_new)<-c("subject","activity",paste(names(df_new[,3:68]),"average",sep=""))

#write new dataset
write.table(df_new,"tidydata.txt",row.names = FALSE) 
