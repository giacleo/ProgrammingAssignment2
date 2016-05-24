## Put comments here that give an overall description of what your
## functions do

## These functions calculate the inverse of a matrix and save it to a cache
## Coursera - R Programmin | Week 3
## User: giacleo

## This function save the matrix in a cache

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
  x <<- y
  inv <<- NULL
  }
  get <- function() x
  
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function create the inverse of a matrix
## If the inverse is already in cache, the cached inverse ,atrix is returned

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
    }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
