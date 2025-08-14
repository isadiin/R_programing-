makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  
  setinverse <- function(inverse) inv <<- inverse
  
  getinverse <- function() inv
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

##cacheSolve
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setinverse(inv)
  inv
}

# Test it 

# Create a special "matrix"
my_matrix <- makeCacheMatrix(matrix(c(1,2,3,4), 2, 2))

# Compute its inverse (first time: calculates)
cacheSolve(my_matrix)

# Compute again (second time: retrieves cached data)
cacheSolve(my_matrix)



