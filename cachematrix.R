## Put comments here that give an overall description of what your
makeCacheMatrix <- function(x = matrix()) {
  
 -}
 -
 +      xinversa <- NULL 
 +      set <- function(z) {
 +	  x <<- z
 +	  xinversa <<- NULL 
 +      }
  
 -## Write a short comment describing this function
 +      get <- function() x 
 +      setInversa <- function(inv) xinversa <<- inv
 +      getInversa <- function() xinversa 
 +      list(set = set, get = get,
 +	       setInversa = setInv,
 +	       getInversa = getInv)
 +  }
  
 -cacheSolve <- function(x, ...) {
 -        ## Return a matrix that is the inverse of 'x'
 -}
 +  cacheSolve <- function(x, ...) {
 +      matriz <- x$getInv() 
 +      
 +      if(!is.null(matriz)) { 
 +	  message("getting cached data")
 +	  return(matriz) 
 +      }
 
 
 +      data <- x$get() 
 +      m <- solve(data) 
 +      x$setInv(matriz) 
 
 +      matriz
 +  }
