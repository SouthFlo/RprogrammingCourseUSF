# Import packages
library(tidyverse)

# Inputed Data
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c("bad", "bad", "bad", "bad", "good", "good", "good", "good", NA, "bad")
second <- c("low", "low", "high", "high", "low", "low", "high", "high", "high","high")
finaldecision <- c("low", "high", "low", "high", "low", "high", "low", "high", "high", "high")

# create Dataframe
hospital.df <- data.frame(Freq, bloodp, first, second, finaldecision)

# Side-by-side Boxplot
par(mfcol = c(1, 3)) 
boxplot(hospital.df$bloodp ~ hospital.df$first, xlab = "First", ylab = "BloodP")
boxplot(hospital.df$bloodp ~ hospital.df$second, xlab = "Second", ylab = "BloodP") 
boxplot(hospital.df$bloodp ~ hospital.df$finaldecision, xlab = "Final Decision", ylab = "BloodP")

#Histogram 
ggplot(hospital.df, aes(Freq)) +
  geom_histogram(bins = 10)



