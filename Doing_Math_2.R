# Inputed Data
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)

# Answer the following questions
#a) Find A + B
sum_AB <- A + B  
sum_AB

#b) Find A - B
sub_AB <- A - B
sub_AB

# Using the diag() function to build a matrix of size 4 with the following values
# in the diagonal 4,1,2,3.
build <- diag(c(4,1,2,3))
build

# Generate the following matrix:
  ## [,1] [,2] [,3] [,4] [,5]
  ## [1,] 3 1 1 1 1
  ## [2,] 2 3 0 0 0
  ## [3,] 2 0 3 0 0
  ## [4,] 2 0 0 3 0
  ## [5,] 2 0 0 0 3
generate <- diag(3, ncol = 5, nrow = 5)
# Making first column equal 2
generate[,1] <- 2
# Making first row equal 1
generate[1,] <- 1
generate
