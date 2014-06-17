## makeCacheMatrix creates a special "matrix" object
## that can cache its inverse

## It returns a list of four functions that:  
## 1. set the value of the matrix 
## 2. get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse

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
