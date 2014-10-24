## These functions are designed to optimize system performance for
## calculations to inverse a matrix by using using system cache
## for calculations previously performed.


## This function uses the super assignment operator to create 
## a special matrix cached in memory that can be resused. The
## output from this function consits of a list with the following:
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the inverse of the matrix
## 4. get the invest of the matirx



makeCacheMatrix <- function(x = matrix()) {    ## Name function, assign matrix as defult arg
         
     mt <- NULL                                ## Create mt object for this function
     set <- function(y) {                      ## Set variable "y" in this function
          x <<- y                              ## Overwrite value of "y" to "x" in global evironment
          mt <<- NULL                          ## Create mt object in global environment
     }
     get <- function() x                       ## Obtain value of x from global environment
     setinv <- function(mt.inv) mt <<- mt.inv  ## Set value for matrix inversion in global environment
     getinv <- function() mt                   ## Get value of the matrix inversion
     list(set = set, get = get,                ## Assign and output names for function operations
          setinv = setinv,
          getinv = getinv)
     
     
}


## This function inverses the value of a matrix, but first
## checks to see if the required value exists in cache and if
## so will use that value instaed of recomputing

cacheSolve <- function(x, ...) {                ## Name function, argument x
     
     mt <- x$getinv()                           ## Obtain value from memory
     if(!is.null(mt)) {                         ## Check if value from memory is NOT null
          message("getting cached data")        ## Output message and values if from cache
          return(mt)
     }
     data <- x$get()                            ## Assign matrix if memory value is null
     mt <- solve(data, ...)                     ## Matrix inversion calculation
     x$setinv(mt)                               ## Assign matrix inversion to value as mt
     mt                                         ## Function output
     
}

