Tidy Data codebook
=================
This file contains description on how dataset `tidydata.txt` was created and it's 
variables descriptions.  

Source
------
Data was downloaded from UCI Machine Learning Repository via link http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

Here's is short data description from the source.
==================================================================  
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================  

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Data transformations
--------------------

Below are transformations that were carried out to prepare `tidydata.txt`:  
* Data loaded from web and saved to local drive.  
* Data extracted from zip file.  
* Files with data features names, activities labels read.  
* Training and test data sets read and merged.
* Activities converted to factor and described roperly.  
* From variable list all variables that had mean and standard deviation statistics
of measurements were selected.  
* Names of those variables were cleaned and expanded to better reflect measuremet.
* New data set was created by grouping data by subject and it's activity and calculating 
mean of selected variables.  
* New data set columns names were updated to match new averaged measurements.  
* New data set exported to `tidydata.txt`.  

Variable descriptions
---------------------
There are 2 grouping variables - `subject` and subjects `activity`.  

Other selected variables for this dataset come from the `accelerometer` and `gyroscope` 3-axial raw signals tAcc-XYZ and tGyro-XYZ (all raw signals were not used in data preparetion). These `time` domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the `acceleration` signal was then separated into `body` and `gravity` acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain `Jerk` signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the `magnitude` of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (frequency domain signals).  

These signals were used to estimate variables present in data set - mean and standard deviations of measurements for subject activities.

Variable list:  

 [1] "subject"                                                      
 [2] "activity"                                                     
 [3] "timebodyaccelerometermeanxaverage"                            
 [4] "timebodyaccelerometermeanyaverage"                            
 [5] "timebodyaccelerometermeanzaverage"                            
 [6] "timebodyaccelerometerstandarddeviationxaverage"               
 [7] "timebodyaccelerometerstandarddeviationyaverage"               
 [8] "timebodyaccelerometerstandarddeviationzaverage"               
 [9] "timegravityaccelerometermeanxaverage"                         
[10] "timegravityaccelerometermeanyaverage"                         
[11] "timegravityaccelerometermeanzaverage"                         
[12] "timegravityaccelerometerstandarddeviationxaverage"            
[13] "timegravityaccelerometerstandarddeviationyaverage"            
[14] "timegravityaccelerometerstandarddeviationzaverage"            
[15] "timebodyaccelerometerjerkmeanxaverage"                        
[16] "timebodyaccelerometerjerkmeanyaverage"                        
[17] "timebodyaccelerometerjerkmeanzaverage"                        
[18] "timebodyaccelerometerjerkstandarddeviationxaverage"           
[19] "timebodyaccelerometerjerkstandarddeviationyaverage"           
[20] "timebodyaccelerometerjerkstandarddeviationzaverage"           
[21] "timebodygyroscopemeanxaverage"                                
[22] "timebodygyroscopemeanyaverage"                                
[23] "timebodygyroscopemeanzaverage"                                
[24] "timebodygyroscopestandarddeviationxaverage"                   
[25] "timebodygyroscopestandarddeviationyaverage"                   
[26] "timebodygyroscopestandarddeviationzaverage"                   
[27] "timebodygyroscopejerkmeanxaverage"                            
[28] "timebodygyroscopejerkmeanyaverage"                            
[29] "timebodygyroscopejerkmeanzaverage"                            
[30] "timebodygyroscopejerkstandarddeviationxaverage"               
[31] "timebodygyroscopejerkstandarddeviationyaverage"               
[32] "timebodygyroscopejerkstandarddeviationzaverage"               
[33] "timebodyaccelerometermagmeanaverage"                          
[34] "timebodyaccelerometermagstandarddeviationaverage"             
[35] "timegravityaccelerometermagmeanaverage"                       
[36] "timegravityaccelerometermagstandarddeviationaverage"          
[37] "timebodyaccelerometerjerkmagmeanaverage"                      
[38] "timebodyaccelerometerjerkmagstandarddeviationaverage"         
[39] "timebodygyroscopemagmeanaverage"                              
[40] "timebodygyroscopemagstandarddeviationaverage"                 
[41] "timebodygyroscopejerkmagmeanaverage"                          
[42] "timebodygyroscopejerkmagstandarddeviationaverage"             
[43] "frequencybodyaccelerometermeanxaverage"                       
[44] "frequencybodyaccelerometermeanyaverage"                       
[45] "frequencybodyaccelerometermeanzaverage"                       
[46] "frequencybodyaccelerometerstandarddeviationxaverage"          
[47] "frequencybodyaccelerometerstandarddeviationyaverage"          
[48] "frequencybodyaccelerometerstandarddeviationzaverage"          
[49] "frequencybodyaccelerometerjerkmeanxaverage"                   
[50] "frequencybodyaccelerometerjerkmeanyaverage"                   
[51] "frequencybodyaccelerometerjerkmeanzaverage"                   
[52] "frequencybodyaccelerometerjerkstandarddeviationxaverage"      
[53] "frequencybodyaccelerometerjerkstandarddeviationyaverage"      
[54] "frequencybodyaccelerometerjerkstandarddeviationzaverage"      
[55] "frequencybodygyroscopemeanxaverage"                           
[56] "frequencybodygyroscopemeanyaverage"                           
[57] "frequencybodygyroscopemeanzaverage"                           
[58] "frequencybodygyroscopestandarddeviationxaverage"              
[59] "frequencybodygyroscopestandarddeviationyaverage"              
[60] "frequencybodygyroscopestandarddeviationzaverage"              
[61] "frequencybodyaccelerometermagmeanaverage"                     
[62] "frequencybodyaccelerometermagstandarddeviationaverage"        
[63] "frequencybodybodyaccelerometerjerkmagmeanaverage"             
[64] "frequencybodybodyaccelerometerjerkmagstandarddeviationaverage"  
[65] "frequencybodybodygyroscopemagmeanaverage"                     
[66] "frequencybodybodygyroscopemagstandarddeviationaverage"        
[67] "frequencybodybodygyroscopejerkmagmeanaverage"                 
[68] "frequencybodybodygyroscopejerkmagstandarddeviationaverage