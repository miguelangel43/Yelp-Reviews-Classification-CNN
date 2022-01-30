library(dplyr)

data <- read.csv("yelp_review.csv") # https://www.kaggle.com/yelp-dataset/yelp-dataset/version/6

data <- data[, c('stars' ,'text')]

# Some statistics of the data
summary(data)
# A histogram of the stars
hist(data$stars)
# A histogram of the review size in number of characters
hist(nchar(data$text))

# The data is unbalanced in the number of stars.
# Let's get a balanced subset of the data
# Find out the minimum count for the number of stars
min(table(data$stars))

# Get a balanced subset of the data
data_1 <- filter(data, stars == 1)
data_2 <- filter(data, stars == 2)
data_3 <- filter(data, stars == 3)
data_4 <- filter(data, stars == 4)
data_5 <- filter(data, stars == 5)
# Free some memory
rm(data)
# Combine the subsets
reduced_data <- rbind(data_1[1:4040,],data_2[1:4040,],data_3[1:4040,],data_4[1:4040,],data_5[1:4040,])
table(reduced_data$stars)
rows <- sample(nrow(reduced_data))
reduced_data <- reduced_data[rows, ]
write.csv(reduced_data,"yelp_20200.csv")