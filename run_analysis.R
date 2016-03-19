## This R-script will read, merge and analyze text files to gather and clean data
## This is for the final Course project for Cleaning and Gathering Data

traindataPath<-"./UCI\ HAR\ Dataset/train/"
testdataPath<-"./UCI\ HAR\ Dataset/test/"
trainFlist<-c("y_train.txt","X_train.txt","subject_train.txt")
testFlist<-c("y_test.txt","X_test.txt","subject_test.txt")
activityFile<-"./UCI\ HAR\ Dataset/activity_labels.txt"
featuresFile<-"./UCI\ HAR\ Dataset/features.txt"

## Reading the labels of Activities and Features into data frames for later use
actLabels<-read.table(activityFile, sep=" ", stringsAsFactors = FALSE)
colnames(actLabels)<-c("Act_ID","Activity")
ftrLabels<-read.table(featuresFile, sep=" ", stringsAsFactors = FALSE)
colnames(ftrLabels)<-c("Ftr_ID","Feature")

## Read the training data first
train_sub<-read.table(paste(traindataPath,trainFlist[3],sep="")) ## read in subject id list
train_y<-read.table(paste(traindataPath,trainFlist[1],sep="")) ## read in acitivity(y) list
train_df<-data.frame(train_sub, train_y)
colnames(train_df)<-c("Subject","Activity")
## Replace the activity id in dataset by the actual activity label
train_df$Activity<-actLabels$Activity[match(train_df$Activity, actLabels$Act_ID)]
## Read in train X data and give colnames same as feature label read earlier
train_X<-read.table(paste(traindataPath,trainFlist[2],sep=""))
colnames(train_X)<-ftrLabels$Feature
## Add the subject ID and Activity columns
train_df<-data.frame(train_df,train_X)

## Now read in the test data 
test_sub<-read.table(paste(testdataPath,testFlist[3],sep="")) ## read in subject id list
test_y<-read.table(paste(testdataPath,testFlist[1],sep=""))## read in acitivity(y) list
test_df<-data.frame(test_sub, test_y)
colnames(test_df)<-c("Subject","Activity")
## Replace the Activity by the actual activity label
test_df$Activity<-actLabels$Activity[match(test_df$Activity, actLabels$Act_ID)]
## Read in train X data and give colnames same as feature label read earlier
test_X<-read.table(paste(testdataPath,testFlist[2],sep=""))
colnames(test_X)<-ftrLabels$Feature
## Add the subject ID and Activity columns
test_df<-data.frame(test_df, test_X)

## merge the two databases into one. Add rows from test_df and train_df to mrg_df
mrg_df<-rbind(train_df, test_df)

## Find the Columns corresponding to either mean or std of any measurement
colsToGet<-grep("mean|std",colnames(mrg_df))
colsToGet<-c(1,2,colsToGet) ## Add the first two cols(Subject, Activity) to extract

## Extract the columns which have mean or std of measurements into another df
final_df<-as.data.frame(mrg_df[,colsToGet], drop=FALSE) ## Selected Cols but all rows

## Create a grouped summary of each variable by subject and activity. So this will
## calculate an average for each variable by subject and activity. So it will be a
## 30x6=180 average values that will be calulated for each variable
library(dplyr)
avg_data<- final_df %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

## Write the tidy data to file
write.table(avg_data,file = "tidy_avgdata.txt", row.names=FALSE)

