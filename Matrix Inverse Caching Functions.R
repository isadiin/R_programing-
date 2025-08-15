## makeCacheMatrix: Creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL  # initialize cached inverse
    
    # Set a new matrix and reset cached inverse
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    
    # Get the current matrix
    get <- function() x
    
    # Set the cached inverse
    setinverse <- function(inverse) inv <<- inverse
    
    # Get the cached inverse
    getinverse <- function() inv
    
    # Return a list of functions
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}

## cacheSolve: Computes the inverse of the special "matrix" returned by makeCacheMatrix
## If the inverse has already been calculated, retrieves it from the cache
cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    
    # Return cached inverse if available
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    
    # Compute the inverse since it wasn't cached
    mat <- x$get()
    inv <- solve(mat, ...)
    
    # Cache the computed inverse
    x$setinverse(inv)
    
    inv
}

