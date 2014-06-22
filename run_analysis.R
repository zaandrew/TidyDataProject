
#Load data
sub_test <- data.frame(read.table("subject_test.txt",header = TRUE))
x_test <- data.frame(read.table("X_test.txt", header = TRUE))
y_test <- data.frame(read.table("y_test.txt",header = TRUE))

sub_train <- data.frame(read.table("subject_train.txt",header = TRUE)) 
x_train <- data.frame(read.table("X_train.txt", header = TRUE))
y_train <- data.frame(read.table("y_train.txt",header = TRUE))

act_lab <- data.frame(read.table("activity_labels.txt",header = FALSE))
names(act_lab) <- c("activity", "activity_desc")

ft_lab <- data.frame(read.table("features.txt", header = FALSE))
names(ft_lab) <- c("feature_cd", "feature_desc")

z <- read.table("X_test.txt")


#----------------------------------------------------------------
#   Merges the training and the test sets to create one data set
#----------------------------------------------------------------
#Merging sub files
names(sub_test) <- "sub"
names(sub_train) <- "sub"
sub <- rbind(sub_test,sub_train)


#Merging feature files
names(x_test) <- names(z)
names(x_train) <- names(z)
ftrs <- rbind(x_test, x_train)
names(ftrs) <- ft_lab[,2]

#Merging activity files
names(y_test) <- "activity"
names(y_train) <- "activity"
activity <- rbind(y_test,y_train)

#Merging columns into one dataset
m <- cbind(sub, activity)
d <- cbind(m,ftrs)
 


#------------------------------------------------------------------------------------------
# Extract only the measurements on the mean and standard deviation for each measurement
#------------------------------------------------------------------------------------------
ext <- d[c(1:8,43:48,83:88, 123:128,163:168,203:204,216:218,229:230, 242,243, 255:256, 268:273, 
		347:352,426:431,505:506, 531:532, 557:563)]
head(ext)



#------------------------------------------------------------------------------------------
# Uses descriptive activity names to name the activities in the data set
#------------------------------------------------------------------------------------------


act_lab <- data.frame(read.table("activity_labels.txt",header = FALSE))
names(act_lab) <- c("activity", "activity_desc")
d2 <- merge(ext,act_lab ,by="activity")
data <- d2[,c(2,1,73,3:72)]

str(data) 		# <-----  TIDY DATA SET #1

#------------------------------------------------------------------------------------------
# Appropriately labels the data set with descriptive activity names
#------------------------------------------------------------------------------------------

#Data set has been labeled above



#------------------------------------------------------------------------------------------
# Creates a second, independent tidy data set with the average of each variable for each 
#    activity and each subject
#------------------------------------------------------------------------------------------

library(reshape2)
#Melt the data
mdata <- melt(data, id=c("sub","activity","activity_desc"))

# Cast the melted data
tidydata<-dcast(mdata, formula=sub + activity + activity_desc ~ variable, mean)str

# export the tidy dataset to a txt file
write.table(tidydata, paste(getwd(), "/tidydata.txt", sep=""), sep="\t", row.names=FALSE)

#write.csv(tidydata,"tidydata.csv")
