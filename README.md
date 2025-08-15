Cache Matrix Inversion in R

This repository contains R functions that cache the inverse of a matrix. Caching can save time when repeatedly computing the inverse of the same matrix, avoiding redundant calculations.

Functions
1. makeCacheMatrix

This function creates a special “matrix” object that can store a matrix and cache its inverse. It returns a list of functions to:

set(y): Set a new matrix y and clear the cached inverse.

get(): Retrieve the current matrix.

setinverse(inverse): Cache the inverse of the matrix.

getinverse(): Retrieve the cached inverse if it exists.

Example:

my_matrix <- makeCacheMatrix(matrix(c(1,2,3,4), 2, 2))
my_matrix$get()  # Returns the stored matrix

2. cacheSolve

This function computes the inverse of the special “matrix” created by makeCacheMatrix. It checks if the inverse has already been calculated:

If cached, it returns the cached inverse with a message "getting cached data".

If not cached, it calculates the inverse, caches it, and returns the result.

Example:

# Compute inverse (first time calculates)
cacheSolve(my_matrix)

# Compute inverse again (retrieves cached data)
cacheSolve(my_matrix)

Example Workflow
# Create a special matrix object
my_matrix <- makeCacheMatrix(matrix(c(1,2,3,4), 2, 2))

# First computation (calculates inverse)
inv1 <- cacheSolve(my_matrix)

# Second computation (uses cached inverse)
inv2 <- cacheSolve(my_matrix)


Output:

getting cached data  # Appears only during second retrieval

