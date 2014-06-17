## makeCacheMatrix creates a special "matrix" 
## makeCacheMatrix contains four functions

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    ## 1. Set the value of the matrix
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    ## 2. Get the value of the matrix
    get <- function() x
    ## 3. Set the value of the inverted matrix
    setinverse <- function(solve) m <<- solve
    ## 4. Get the value of the inverted matrix
    getinverse <- function() m
    ## Return the list of four values   
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## cacheSolve computes the inverse of the special "matrix"
## cacheSolve can retrieve the inverse from cache

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    ## If the inverse has already been calculated
    ## give a message that the inverse is retrieved from cache
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    ## Retrieve 'x' fom cache
    data <- x$get()
    ## Calculate the inverse of 'x' retrieved from cache 
    m <- solve(data, ...)
    ## Retrieve the value of the inverse from cache
    x$setinverse(m)
    ## Return the inverse from cache
    m
}