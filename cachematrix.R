## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# take input x (either matrix or empty)
# 

# <<- 
randomfunction < -function(x){
  set <- function(y){
    x <<- y
    i <<- NULL
  }
}


makeCacheMatrix <- function(x = matrix()) { # take matrix X 
  # "i" inverse
  i <- NULL # assign answer (aka. inverse of X) to NULL
  setX <- function(y){ # declaring function setX, which allows us to set the value of the input of the matrix
    x <<- y 
    i <<- NULL
  }
  getX <- function() x # retrieves matrix X from cache
  setinverse <- function(inverse) i <<- inverse # setinverse sets the values of the inverse matrix
  getinverse <- function() i # retrieves the inverse of matrix X
  list(setX = setX, getX = getX, # returning, all 4 functions into a list and assigning a name to each function 
       setinverse = setinverse,
       getinverse = getinverse)
  # things on the left are the headers, things on the right are the values, hence why they are the same
  # in theory, could put anything you want on the left side (e.g. colunm1 = setX, column2 = getX, ...)
}

## Write a short comment describing this function
cacheSolve <- function(x, ...) { # take a list containing 4 functions on line 29-31
  i <- x$getinverse() # get inverse of matrix and assign it to i
  if(!is.null(i)) { # checking if inverse of matrix already exists in cache
    message("getting cached data")
    return(i) # if NOT null, then return cached inversed matrix
  }
  matrix <- x$getX() # if null, run function getX() to get the original matrix
  i <- solve(data, ...) # now do calculation via function solve() to find inverse matrix
  x$setinverse(i) # caching result of coputation of later
  i # return inverse; regardless of using existing cache or new calculation (which branch it follows), return inverse
}


