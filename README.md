# Getting and Cleaning Data Week 4 Project
Repo for Coursera's "Getting and Cleaning Data" Week 4 project.
Contains R code, codebook, and tidy data set for the assignment.

## Files:
CodeBook.md describes the how to use all this, variables, the data, and any transformations or work that was performed to clean up the data.


## Code Explanation:
run_analysis.R contains all the code to perform the analyses described in the 5 steps. They can be launched in RStudio by just importing the file. 

Importing the dataset by following steps before executing run_analysis.R: 
* First, download and unzip the data file into your R working directory.
* Second, download the R source code into your R working directory.
* Finally, execute R source code to generate tidy data file.

#Here are the five steps explanation to the work done by run_analysis:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Tidy data contains 180 rows and 68 columns. Each row has averaged variables for each subject and each activity.



