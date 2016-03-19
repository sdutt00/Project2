==================================================================
R-Script for Cleaning Data from SmartPhone Human Activity
Version 1.0
==================================================================
Sandeep Dutta
==================================================================

This script gets the SmartPhone Human Activity data collected by Reyes-Ortiz et. al (full reference in License section),
and creates another tidy data set from this large dataset. It uses the "UCI HAR Dataset" which has the raw data for different subjects for a number of activity. This raw data is available across a number of different files. The script collects the information from the various files into a single dataset and then finally creates a tidy dataset with a subset of the variables and aggregates them.

What the script does:
======================================

- The script gathers the individual records (subject, measurements and activity) from Training and Test dataset and merges into one combined dataset
- It reads the activity labels and replaces the activity id in the subject records with the labels
- It reads the feature labels from the feature_info file and replaces the variable names in the records with these names.
- Then it extracts only the mean and stdev of each measurement from the list of 561 variables that were recorded.
- It creates a merged dataset with 81 variables (mean, std of each measure and Subject and Activity indicators)
- At the end it groups all the measurements for each selected variable in earlier step by the activity and the subject. It caslculates the average for each measure by subject(30) and activity(6).
- At the end we have a (180x81) dataset where each value for a measurement refers to the average value for a subject for a activity.
- Finally the script writes out the tidy dataset into a text file as output using write.table()

What does the script need to run successfully:
=========================================

- The script assumes that the "UCI HAR Dataset" directory exists under the working directory where this script is located.

- The script assumes that the original directory structure of UCI HAR Dataset has not been changed and the file names are the same.

- The script uses relative reference from the current working directory to find the raw dataset files.


License:
========
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

