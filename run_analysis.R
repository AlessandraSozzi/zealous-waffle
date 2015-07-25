library(plyr)

# Download the zip file in the current working directory
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data.zip", method = "curl")

# Unzip file in the current folder
unzip("data.zip", unzip = "internal")


features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
matches <- grepl(pattern = "std\\(\\)|mean\\(\\)", x = features[, 2]) 
classes <- sub(pattern = TRUE, replacement = "numeric", x = matches)
classes <- sub(pattern = FALSE, replacement = "NULL", x = classes)


train <- read.table("./UCI HAR Dataset/train/X_train.txt", colClasses = classes)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
activity_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt", colClasses = classes)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
activity_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")

activities <- read.table("./UCI HAR Dataset/activity_labels.txt")


train <- cbind(subject_train, activity_train, train)
test <- cbind(subject_test, activity_test, test)

# combined data
data <- rbind(train, test)
colnames(data) <- c("subject", "activity", features[matches, 2])

data$activity <- factor(data$activity, 
                        levels = as.character(activities$V1),
                        labels = activities$V2)

data_summary <- ddply(data, .(activity, subject), numcolwise(mean))

write.table(data_summary, "tydy_data.txt", row.name = FALSE)
