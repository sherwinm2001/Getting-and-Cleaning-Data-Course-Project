## Description
This R-code downloads data about "Human Activity Recognition Using Smartphones Data Set" (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), merges the training and the test sets to create one data set, fetches only mean and standard deviation values and merges this set of data with activity_labels and coloumns are renamed as features. At the end the result is stored in text format in the file `Tidy_Dataset.txt`.

## Assignment Submission Files
* [run_analysis.R](https://github.com/sherwinm2001/Getting-and-Cleaning-Data-Course-Project/blob/master/run_analysis.R)
* [CodeBook.md](https://github.com/sherwinm2001/Getting-and-Cleaning-Data-Course-Project/blob/master/Codebook.md)
* [README.md](https://github.com/sherwinm2001/Getting-and-Cleaning-Data-Course-Project/blob/master/README.md)
* [Tidy_Dataset.txt](https://github.com/sherwinm2001/Getting-and-Cleaning-Data-Course-Project/blob/master/Tidy_Dataset.txt)

## run_analysis.R - Steps in detail
1. Install dplyr package first and load the dplyr library.
2. Download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
3. Unzip the downloaded zip file.
4. Assign data to tables.
5. Assign descriptive coloumn names to tables
6. Merge train and test data
7. Extract mean and standard deviation values for each measurement (i.e. SubjectID and its corresponding ActivityID)
8. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
9. Writing and saving the created tidy data set in the .txt format.
