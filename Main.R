# Load user sample from UserSampleTweets.csv
user_sample_tweets <- read.csv(file = "UserSampleTweets.csv")

# This library for using count function
install.packages("plyr")
library(plyr)
# This line for nickname frequency 
user_sample_ids <- count(user_sample_tweets$UserID)
user_sample_ids <- data.frame(UserID=user_sample_ids[,'x'])

remove(tuples)