## Put comments here that give an overall description of what your
## functions do : 
# The makeCacheMatrix function creates a cache matrix from a existing matrix.
# The cacheSolve function 'looks' for the presence of a inverse of a square matrix returned by the makeCacheMatrix function.

## Write a short comment describing this function
# makeCacheMatrix function is a function thats stores a list of functions. These functions : set the value of the matrix, get the value of the matrix, set the value of the mean, get the value of the mean. 
makeCacheMatrix <- function(x = matrix()) { 
  cacheMatrix <- NULL
  set <- function(y){
        x <<- y
        cacheMatrix <<- NULL
}
 get <- function() x 
 setsolve <- function(solve) cacheMatrix<<- solve
getsolve <- function() cacheMatrix 
list(set = set, get = get, 
     setsolve = setsolve,
     getsolve = getsolve )
}

## Write a short comment describing this function
# If the x$getsolve command verifies a  value has already been calculated and is not 'NULL', then cacheSolve returns the inverse from the cache data. Otherwise it gets the  x matrix, computes the inverse, sets the inverse and returns the inverse matrix of x.

cacheSolve <- function(x, ...) {
        cacheMatrix <- x$getsolve()
        if(!is.null(cacheMatrix)){
           message("getting cached data")
        return(cacheMatrix)
        }
        data <- x$get()
        cacheMatrix <- solve(data,...)
        x$setsolve(cacheMatrix)
        cacheMatrix
        ## Return a matrix that is the inverse of 'x'
}