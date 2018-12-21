## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inversion <- NULL
    set <- function(y) {
        x <<- y
        inversion <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inversion <<- inverse
    getinverse <- function() inversion
    list(set = set, get = get, 
         setinverse = setinverse,
         getinverse = getinverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## @x: output of makeCacheMatrix()
    ## return: inverse of the original matrix input to makeCacheMatrix()
    
    inversion = x$getinv()
    
    # if the inverse has already been calculated
    if (!is.null(inversion)){
        message("getting cached data")
        return(inversion)
    }
    
    data = x$get()
    inversion = solve(data, ...)
    
    
    x$setinv(inv)
    
    return(inv)
}