#Input/Output, string manipulation and plyr package 
library(plyr)
library(data.table)

# Importing Data
Student <- read.table("Assignment_6_Dataset.txt", header = TRUE, sep = ",")

# the commend "mean" using Sex as the category (use plyr package for this operation).
Students_average = ddply(Student, 
                       "Sex", 
                       transform,
                       Grade.Average = mean(Grade))

# Write the resulting output to a file.
write.table(Students_average, "Students_Gendered_Mean.csv", sep = ",")

# Convert the data set to a dataframe for names whos' name contains the letter i, 
#then create a new data set with those names.
i_students <- subset(Student, grepl("i", Student$Name, ignore.case=T))

# Write those names to a file separated by comma’s (CSV)
write.csv(i_students,"DataSubset.csv")

