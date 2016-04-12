run_analysis <- function()
{
  #Step 1
  #Read the names of the measurement columns
  features <- read.table("./project-input/features.txt")
  
  #read the legend for the activity labels column
  activityLegend <- read.table("./project-input/activity_labels.txt")
  
  #Activity Labels - read the training and test sets and combine them 
  activity <- rbind(read.table("./project-input/train/y_train.txt"), read.table("./project-input/test/y_test.txt"))
  names(activity) <- c("Activity_ID")
  
  #Participant IDs - read the training and test sets and combine them
  participants <- rbind(read.table("./project-input/train/subject_train.txt"), read.table("./project-input/test/subject_test.txt"))
  names(participants) <- c("Participant_ID")
  
  #Measurements - read the training and test sets and combine them
  measurements <- rbind(read.table("./project-input/train/X_train.txt"), read.table("./project-input/test/X_test.txt"))
  
  #Set the column names on the measurements data table
  names(measurements) <- features[,2]
  
  #Combine the activity, participants, and measurement data sets together
  combined <- cbind(participants, activity, measurements)
  
  #Step 2
  #Extract the mean and standard deviation measurements
  dt <- combined[,c(1,2,grep(".*mean\\(\\)|std\\(\\)", names(measurements))+2)]
  
  #Step 3
  #Use descriptive names for the activities in the data set
  dt$Activity_Name <- activityLegend[dt$Activity_ID, 2]
  
  ##Step 4
  #Add descriptive names to the columns
  names(dt) <- gsub("\\(\\)","",names(dt))
  names(dt) <- gsub("mean","Mean",names(dt))
  names(dt) <- gsub("std","StdDev",names(dt))
  names(dt) <- gsub("-","",names(dt))
  names(dt) <- gsub("Acc","Acceleration",names(dt))
  names(dt) <- gsub("Gyro","Angular",names(dt))
  names(dt) <- gsub("tBody","timeBody",names(dt))
  names(dt) <- gsub("fBody","fftBody",names(dt))
  names(dt) <- gsub("tGravity","timeGravity",names(dt))
  names(dt) <- gsub("fGravity","fftGravity",names(dt))
  
  ##Step 5
  #Create a new data set that has the mean for every variable segmented by participant and activity
  #Note that we ignore the first 2 columns of DT since those are sthe factors we are going to aggregate by
  agg <- aggregate(dt[3:ncol(dt)], by=list(Participant=dt$Participant_ID, Activity=dt$Activity_ID), mean)
  
  #Order by participant and then activity
  agg <- agg[order(agg$Participant, agg$Activity),]
  
  #Write the aggregate table to disk
  write.table(format(agg), file="CourseProjectOutput.txt", append=FALSE, col.names=TRUE, row.names=FALSE)
}