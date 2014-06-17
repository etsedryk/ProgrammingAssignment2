## makeCacheMatrix creates a special "matrix" object
## that can cache its inverse

## It returns a list of four functions aiming at 
## setting and getting the value of the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## cacheSolve  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
