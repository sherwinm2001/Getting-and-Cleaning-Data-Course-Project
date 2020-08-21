library(dplyr)

##Step1: Assigning data to tables
features<-read.table("./features.txt")
activity_labels<-read.table("./activity_labels.txt")
subject_train<-read.table("./train/subject_train.txt")
subject_test<-read.table("./test/subject_test.txt")
xtrain<-read.table("./train/X_train.txt")
ytrain<-read.table("./train/y_train.txt")
xtest<-read.table("./test/X_test.txt")
ytest<-read.table("./test/y_test.txt")

##Step2: Assigning descriptive coloumn names to tables
colnames(subject_train)<-"SubjectID"
colnames(subject_test)<-"SubjectID"
colnames(xtrain)<-features[,2]
colnames(xtest)<-features[,2]
colnames(ytrain)<-"ActivityID"
colnames(ytest)<-"ActivityID"
colnames(activity_labels)<-c("ActivityID", "Activity")

##Step3: Merging train and test data
Subject<-rbind(subject_train,subject_test)
x<-rbind(xtrain,xtest)
y<-rbind(ytrain,ytest)
merged_data<-cbind(Subject,x,y)

##Step4: Extracting mean and standard deviation values for each measurement (i.e. SubjectID and its corresponding ActivityID)
col<-colnames(merged_data)
x<-(grepl("SubjectID",col)|grepl("mean",col)|grepl("std",col)|grepl("ActivityID",col))
tidy_data<-merged_data[,x]

##Step5: Using Descriptive activity names to name the activities in the data set
tidy_data<-merge(tidy_data,activity_labels,by="ActivityID")

##Step6: Appropriately labeling the data set with descriptive variable names
## This is already done in Step 2.

##Step7: Creating a second, independent tidy data set with the average of each variable for each activity and each subject.
SecTidyDataSet<-aggregate(. ~SubjectID + ActivityID, data=tidy_data, mean)
SecTidyDataSet <- SecTidyDataSet[order(SecTidyDataSet$SubjectID, SecTidyDataSet$ActivityID),]