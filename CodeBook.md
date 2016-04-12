========================================================================================================
CODE BOOK
========================================================================================================

++ Raw Data Set
Details about the variables used in the raw data set can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


++ Modifications done to data
1. Data from the various training and test data sets were appended together, i.e. the X_train and X_test sets were merged. 

2. A new column was added to the data set to indicate the name of the activity (e.g., WALKING, STANDING, RUNNING); this name came from the activity_labels.txt file was was matched to the activity_ID column in the raw data set.

3. Variable names were changed to be more descriptive
	- Dashes and parantheses were removed from names
	- "t" at the beginning of the name was changed to "time"; "f" was changed to "fft" to reflect the kind of data contained in that variable
	- "std" was changed to "StdDev"
	- "mean" was changed to "Mean"
	- The term "Gyro" was replaced with "Angular" since those variables were related to angular velocity

++ Columns in final data set
Participant_ID                      
Activity_ID                         
timeBodyAccelerationMeanX           
timeBodyAccelerationMeanY           
timeBodyAccelerationMeanZ           
timeBodyAccelerationStdDevX         
timeBodyAccelerationStdDevY         
timeBodyAccelerationStdDevZ         
timeGravityAccelerationMeanX        
timeGravityAccelerationMeanY        
timeGravityAccelerationMeanZ        
timeGravityAccelerationStdDevX      
timeGravityAccelerationStdDevY      
timeGravityAccelerationStdDevZ      
timeBodyAccelerationJerkMeanX       
timeBodyAccelerationJerkMeanY       
timeBodyAccelerationJerkMeanZ       
timeBodyAccelerationJerkStdDevX     
timeBodyAccelerationJerkStdDevY     
timeBodyAccelerationJerkStdDevZ     
timeBodyAngularMeanX                
timeBodyAngularMeanY                
timeBodyAngularMeanZ                
timeBodyAngularStdDevX              
timeBodyAngularStdDevY              
timeBodyAngularStdDevZ              
timeBodyAngularJerkMeanX            
timeBodyAngularJerkMeanY            
timeBodyAngularJerkMeanZ            
timeBodyAngularJerkStdDevX          
timeBodyAngularJerkStdDevY          
timeBodyAngularJerkStdDevZ          
timeBodyAccelerationMagMean         
timeBodyAccelerationMagStdDev       
timeGravityAccelerationMagMean      
timeGravityAccelerationMagStdDev    
timeBodyAccelerationJerkMagMean     
timeBodyAccelerationJerkMagStdDev   
timeBodyAngularMagMean              
timeBodyAngularMagStdDev            
timeBodyAngularJerkMagMean          
timeBodyAngularJerkMagStdDev        
fftBodyAccelerationMeanX            
fftBodyAccelerationMeanY            
fftBodyAccelerationMeanZ            
fftBodyAccelerationStdDevX          
fftBodyAccelerationStdDevY          
fftBodyAccelerationStdDevZ          
fftBodyAccelerationJerkMeanX        
fftBodyAccelerationJerkMeanY        
fftBodyAccelerationJerkMeanZ        
fftBodyAccelerationJerkStdDevX      
fftBodyAccelerationJerkStdDevY      
fftBodyAccelerationJerkStdDevZ      
fftBodyAngularMeanX                 
fftBodyAngularMeanY                 
fftBodyAngularMeanZ                 
fftBodyAngularStdDevX               
fftBodyAngularStdDevY               
fftBodyAngularStdDevZ               
fftBodyAccelerationMagMean          
fftBodyAccelerationMagStdDev        
fftBodyBodyAccelerationJerkMagMean  
fftBodyBodyAccelerationJerkMagStdDev
fftBodyBodyAngularMagMean           
fftBodyBodyAngularMagStdDev         
fftBodyBodyAngularJerkMagMean       
fftBodyBodyAngularJerkMagStdDev     
Activity_Name                       
