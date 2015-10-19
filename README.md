Getting and Cleaning Data Course Project repository
===================================================
This repository was created for Getting and Cleaning Data course project. This README describes what 'run_analysis.R' script is for and how to run it.

#Script actions
Above mentioned script downloads dataset from UCI Machine Learning repository http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, 
extracts it in R working directory, processes data and creates tidy dataset 'df_new' as
described in Getting and Cleaning Data course. Script saves new dataset to local 
file 'tidydata.txt'
Read more details on data and it's transformations in 'Codebook.md'.  

#How to run script  
Download 'run_analysis.R' to your local disc drive. Set R working folder to folder
you downloaded script to and run the script. 

#Dependancies
To run properly Script requires 'dply' libraries installed. Script does not install
 dependancies.