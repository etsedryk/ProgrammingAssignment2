## makeCacheMatrix creates a special "matrix" object
## that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    ## Set the value of the matrix
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    ## Get the value of the matrix
    get <- function() x
    ## Set the value of the inverted matrix
    setinverse <- function(solve) m <<- solve
    ## Get the value of the inverted matrix
    getinverse <- function() m
    ## Return the list of four functions 
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## cacheSolve  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
