Project Goal:
=============

The goal of this project was to gather raw data from different sources of files and create a combined dataset with only relevant variables exctracted for the final dataset.

Source Dataset:
================

Human Activity Recognition Using Smartphones Dataset. Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The dataset contains various measurements from 30 subjects where each subject performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The measurements from the bulit-in accelerometer and gyrospcope was collected.

The source dataset consisted of separate files that contained the activity labels, feature labels and the measurements of 561 variables. Furthermore the dataset was divided into a training and test dataset. 

Project Description:
====================
Please refer to the README file for more details about the analysis script for this project. In summary the analysis script gathered the raw data from various sources under training and test and combined to form a merged database of all activities and subject observations. Then a tidy dataset was created with only the mean and std of each measurement extracted from the 561 total variables. In the tidy dataset, the average values of each of the selected variables was summarized grouped by both the activity and the subject.

The final tidy dataset is saved as a text file and the output looks like this:

> head(avg_data)
Source: local data frame [6 x 81]
Groups: Subject [1]

  Subject           Activity tBodyAcc.mean...X tBodyAcc.mean...Y tBodyAcc.mean...Z
    (int)              (chr)             (dbl)             (dbl)             (dbl)
1       1             LAYING         0.2215982      -0.040513953        -0.1132036
2       1            SITTING         0.2612376      -0.001308288        -0.1045442
3       1           STANDING         0.2789176      -0.016137590        -0.1106018
4       1            WALKING         0.2773308      -0.017383819        -0.1111481
5       1 WALKING_DOWNSTAIRS         0.2891883      -0.009918505        -0.1075662
6       1   WALKING_UPSTAIRS         0.2554617      -0.023953149        -0.0973020
Variables not shown: tBodyAcc.std...X (dbl), tBodyAcc.std...Y (dbl), tBodyAcc.std...Z (dbl),.....

Variable Description:
=====================

The tidy dataset consists of 180x81 dataset. There are 79 measurement variables (mean and std of each measurement in original dataset) and the Subject and Activity. There are 30 subjects and 6 activities providing 180 average values for each measurement grouped by activity and subject.

One record in the tidy dataset corresponds to the average measurement value for a SUBJECT for a corresponding ACTIVITY. As you can see above in first line, we have subject 1 and activity LAYING, and next 79 columns are the average measurements for each such variable.

Here are the variable details. Variables 3 to 81 are average values grouped by Subject and Activity and is a numeric in the range [-1,1] 
The variable names are comprised of the following parts

mean - average of measurement, 
std - standard deviation of measurement, 
X,Y,Z - refers to the one of three dimensions of the measurement component
Body - measurement due to the body movement only of the subject
Gravity - measurment attributed to gravity component during activity
Acc - Accelerometer measurement
Gyro - Gyroscope measurement
Freq - Frequency response measurement
Jerk - Measurement attributed to Jerky motion during the activity

 [1] "Subject" -- ID which is a numeric between 1 and 30                       
 [2] "Activity" -- One of the six activities labelled as WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 [3] "tBodyAcc.mean...X"              
 [4] "tBodyAcc.mean...Y"              
 [5] "tBodyAcc.mean...Z"              
 [6] "tBodyAcc.std...X"               
 [7] "tBodyAcc.std...Y"               
 [8] "tBodyAcc.std...Z"               
 [9] "tGravityAcc.mean...X"           
[10] "tGravityAcc.mean...Y"           
[11] "tGravityAcc.mean...Z"           
[12] "tGravityAcc.std...X"            
[13] "tGravityAcc.std...Y"            
[14] "tGravityAcc.std...Z"            
[15] "tBodyAccJerk.mean...X"          
[16] "tBodyAccJerk.mean...Y"          
[17] "tBodyAccJerk.mean...Z"          
[18] "tBodyAccJerk.std...X"           
[19] "tBodyAccJerk.std...Y"           
[20] "tBodyAccJerk.std...Z"           
[21] "tBodyGyro.mean...X"             
[22] "tBodyGyro.mean...Y"             
[23] "tBodyGyro.mean...Z"             
[24] "tBodyGyro.std...X"              
[25] "tBodyGyro.std...Y"              
[26] "tBodyGyro.std...Z"              
[27] "tBodyGyroJerk.mean...X"         
[28] "tBodyGyroJerk.mean...Y"         
[29] "tBodyGyroJerk.mean...Z"         
[30] "tBodyGyroJerk.std...X"          
[31] "tBodyGyroJerk.std...Y"          
[32] "tBodyGyroJerk.std...Z"          
[33] "tBodyAccMag.mean.."             
[34] "tBodyAccMag.std.."              
[35] "tGravityAccMag.mean.."          
[36] "tGravityAccMag.std.."           
[37] "tBodyAccJerkMag.mean.."         
[38] "tBodyAccJerkMag.std.."          
[39] "tBodyGyroMag.mean.."            
[40] "tBodyGyroMag.std.."             
[41] "tBodyGyroJerkMag.mean.."        
[42] "tBodyGyroJerkMag.std.."         
[43] "fBodyAcc.mean...X"              
[44] "fBodyAcc.mean...Y"              
[45] "fBodyAcc.mean...Z"              
[46] "fBodyAcc.std...X"               
[47] "fBodyAcc.std...Y"               
[48] "fBodyAcc.std...Z"               
[49] "fBodyAcc.meanFreq...X"          
[50] "fBodyAcc.meanFreq...Y"          
[51] "fBodyAcc.meanFreq...Z"          
[52] "fBodyAccJerk.mean...X"          
[53] "fBodyAccJerk.mean...Y"          
[54] "fBodyAccJerk.mean...Z"          
[55] "fBodyAccJerk.std...X"           
[56] "fBodyAccJerk.std...Y"           
[57] "fBodyAccJerk.std...Z"           
[58] "fBodyAccJerk.meanFreq...X"      
[59] "fBodyAccJerk.meanFreq...Y"      
[60] "fBodyAccJerk.meanFreq...Z"      
[61] "fBodyGyro.mean...X"             
[62] "fBodyGyro.mean...Y"             
[63] "fBodyGyro.mean...Z"             
[64] "fBodyGyro.std...X"              
[65] "fBodyGyro.std...Y"              
[66] "fBodyGyro.std...Z"              
[67] "fBodyGyro.meanFreq...X"         
[68] "fBodyGyro.meanFreq...Y"         
[69] "fBodyGyro.meanFreq...Z"         
[70] "fBodyAccMag.mean.."             
[71] "fBodyAccMag.std.."              
[72] "fBodyAccMag.meanFreq.."         
[73] "fBodyBodyAccJerkMag.mean.."     
[74] "fBodyBodyAccJerkMag.std.."      
[75] "fBodyBodyAccJerkMag.meanFreq.." 
[76] "fBodyBodyGyroMag.mean.."        
[77] "fBodyBodyGyroMag.std.."         
[78] "fBodyBodyGyroMag.meanFreq.."    
[79] "fBodyBodyGyroJerkMag.mean.."    
[80] "fBodyBodyGyroJerkMag.std.."     
[81] "fBodyBodyGyroJerkMag.meanFreq..

Transformations:
================
- Raw data was collected from training and test dataset individual files and combined to a merged dataset
- Activity Labels and Feature Labels were applied from separate files
- Mean and stdev of each measurement was extracted from the dataset reducing 561 variables to 79.
- Tidy Dataset was created with the 79 variables averaged by activity and subject.
