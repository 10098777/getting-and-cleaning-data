##Instruction to the run_analysis.R
I create one R script called run_analysis.R that does the following
1. set the working directory,download and unzip the data
2. load the training and test sets into R, and merge the two datasets     to create one data set which is called merge.
3. Extract only the measurements on the mean and standard deviation for each measurement from the merge dataset. The new dataset is called merge_selected.
4. Use descriptive activity names to name the activities in the merge_selected dataset. The new dataset is called activity_merge_selected
5. Add a column describing the subjects to the activity_merge_selected,then appropriately labels the data set with descriptive variable names. Now the data set is called subject_activity_merge_selected
6. Based on subject_activity_merge_selected dataset, create a second,independent tidy data set with the average of each variable for each activity and each subject,by using the reshape2 package. The dataset is called mean_final_dataset.
7. store the mean_final_dataset into a .txt file.The file is named mean.txt.
8. load the mean.txt file into R and view the tidy data.
