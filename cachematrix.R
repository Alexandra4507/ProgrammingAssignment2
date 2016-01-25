makeCacheMatrix <- function(x = matrix()) {

      xinversa <- NULL 
      set <- function(z) {
	  x <<- z
	  xinv <<- NULL 
      }

      get <- function() x 
      setInversa <- function(inv) xinversa <<- inv
      getInversa <- function() xinversa 
      list(set = set, get = get,
	       setInversa = setInv,
	       getInversa = getInv)
  }

  cacheSolve <- function(x, ...) {
      matriz <- x$getInv() 
      
      if(!is.null(matriz)) { 
	  message("getting cached data")
	  return(matriz) 
      }
      data <- x$get() 
      m <- solve(data) 
      x$setInv(matriz) 
      matriz
  }
Status API Training Shop Blog About Pricing
© 2016 GitHub, Inc. Terms Privacy Security Contact Hel
