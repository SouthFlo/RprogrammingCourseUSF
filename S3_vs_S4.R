
# Object-Oriented Programming

# The CSV file is from a 5k race I partcipated in on October 6, 2024.
race <- read_csv("5k_for_Edu_ex.csv")

# Using the data() will create an error massage, because my data set is 
# not a build-in data set in R.
data("race")

# Using the head() shows the first 6 rows of the race data frame.
head(race, 6)

# Using list() creates a list with two elements: the race data frame and the number 6.
# The first element is a data frame containing 980 rows and 10 columns. 
# The second element is the integer value 6.
list(race, 6)

# Using the ls() shows a list of all the objects (variables, functions, data frames, etc.) 
# that are currently defined in your R environment.
ls()

# ls() can also be use to lists the column names in the race data frame. Furthermore,
# the pattern method can be use to locate columns that contain the letter "i".
ls(race, pattern = "i")

# Using the class() on the data set race indicates that the object race is a "data frame", 
# but it also has additional classes "spec_tbl_df" and "tbl_df".
class(race)

# Using the str(), which is known as a generic function, can be used to tell what OO system 
# (S3 vs. S4) an object is associated with. In ths case, the race data frame is an S3 object, 
# specifically of class "spec_tbl_df", "tbl_df", and "data.frame".
str(race)

# Example of S3
new_racer <- function(Pos, Race_No, Name, Gender, Dist) {
  racer <- list(Pos = Pos, Race_No = Race_No, Name = Name, Gender = Gender, Dist = Dist)
  class(racer) <- "Racer"
  racer
}
# Imputing new racer
graduate <- new_racer("981", "111", "Dec. Graduate", "Male", "3.1")
graduate

# Example of S4
setClass("Racer",
         representation(
           Pos = "numeric",
           Race_No = "numeric",
           Name = "character",
           Gender = "character",
           Dist ="numeric"
         )
         )
graduate <- new("Racer", Pos = 982, Race_No = 112, Name = "Dec. Graduate Jr.",
                Gender = "Male", Dist = 3.1)











