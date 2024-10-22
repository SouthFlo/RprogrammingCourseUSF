# Input/Output, string manipulation and plyr package.
# Make sure to install package if needed.
library(plyr)

# Importing Data, separating elements within a string with sep = ","
# The file.chooser() function provides a graphical user interface (GUI) for selecting files.
Student <- read.table(file.choose(), header = TRUE, sep = ",")

# Calculate the average grade for each gender in the Student data frame using the ddply() function
#(use plyr package for this operation).
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

