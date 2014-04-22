## makeCacheMatrix creates an object (list) to hold a matrix and its inverse
## makeCahceMatrix has functions to initialize it (set); get the matrix (get);
## set/store the inverse (setinv) and to get the inverse matrix back (getinv)
##
## cacheSolve operates on an list initialized by makeCacheMatrix.
## When called, it returns the inverse matrix stored in makeCacheMatrix object 
## by calling its function getinv. 
## If it returns NULL, then cacheSolve calculates the inverse of matrix and
## stores it in the makeCacheMatrix object by calling its function setinv.
## MAR, Out/2016.

#
# Function makeCacheMatrix, part of  week 3 assignment
#
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(data) m <<- data
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

#
# Function cacheSolve, part of  week 3 assignment
#
cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached inverted matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}

