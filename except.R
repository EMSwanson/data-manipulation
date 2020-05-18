###Calculating values in one vector not in another
###Use case was looking for ids in a new vector not in an old

setwd("###Working directory here")

new_data = read.csv("###New File")
old_data = read.csv("###Old File")

inter = Reduce(intersect, list(new_data[,1], old_data[,1]))

write.csv(new_data[,1][!(new_data[,1] %in% old_data[,1])], file = "exceptions.csv")
