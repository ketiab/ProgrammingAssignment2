## Put comments here that give an overall description of what your
## functions do

## creates a list that contains the functions get,set,getsolve and setsolve

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y)
    {
  x <<- y
  s <<- NULL
     }
     get <- function() x
     setsolve <- function(solve) s <<- solve
     getsolve <- function() s
     list(set = set, get = get,
      setsolve = setsolve,
      getsolve = getsolve)

}


## calculates the inverse of matrix x. first checks whether has been calculated before

cacheSolve <- function(x, ...) {
  s <- x$getsolve()
     if(!is.null(s)) {
         message("getting cached data")
         return(s)
       }
    data <- x$get()
     s <- solve(data, ...)
     x$setsolve(s)
     s
   }

