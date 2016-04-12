Readme for Getting and Cleaning Data Course Project

- Source of Raw Data

The Raw data is obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

- Description of Raw Data

The Details of Raw Data can be obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

- R Version and OS details

platform       i386-w64-mingw32            
arch           i386                        
os             mingw32                     
system         i386, mingw32               
status                                     
major          3                           
minor          2.3                         
year           2015                        
month          12                          
day            10                          
svn rev        69752                       
language       R                           
version.string R version 3.2.3 (2015-12-10)
nickname       Wooden Christmas-Tree

- Script Details

The script is named "run_analysis.R". This script combines the various raw data sets, extracts the mean and standard deviation measurements from the set, and then creates a tidy data set with the averages of those measurements segmented by participant and activity. The script will create a single output file named "CourseProjectOutput.txt"; this contains the tidy data set arranged by participant and activity in ascending order. 


- Steps involved in creating Tidy Data from raw Data

This code assumes that tthe script is in the parent directory, and the raw data files are located in a subdirectory names "project-input". This folder structure is shown in GitHub. 

Each of the step involved in mentioned as code comments in run_analysis.R