## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


# creates a list with these functions:
# 1 set - set the value of the matrix
# 2 get - get the value of the matrix
# 3 setinverse - set the value of the inverse
# 4 getinverse - get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function (y) {
    	x <<- y
    	m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

#this function returns the inverse of a matrix. first it checks if the inverse
#is in the 'cache', if so it returns the cached version, if not, it computes
#the inverse with the solve function and sets the output in the cache with setinverse.

#matrix must always be invertible
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)) {
            message("getting cached data")
            return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m
}
