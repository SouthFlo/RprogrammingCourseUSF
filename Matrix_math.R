# Inputed Data
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)

# Finding the Determinant of Matrix A
det_A <- det(A)
det_A

dim_A <- dim(A) ##the matrix A is squared, so Determinant can be calculated.
dim_A
# Print the results
cat("Determinant of A:", det_A, "\n")

# Finding the Determinant of Matrix B
det_B <- det(B)
det_B

dim_B <- dim(B) #the matrix B is not squared, so Determinant can't be calculated. 
dim_B
# Print the results
cat("Determinant of B:", det_B, "\n")

# Finding the inverse of Matrix A
inv_A <- solve(A) #The inverse can't be found when Determinant is 0
# Print the results
cat("Inverse of A:\n", inv_A, "\n")

# Finding  the inverse of Matrix B
inv_B <- solve(B) ##The inverse can't be found when matrix is not squared
# Print the results
cat("Inverse of B:\n", inv_B, "\n") 


