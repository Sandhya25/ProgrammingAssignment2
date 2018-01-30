## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    function(x = matrix()) { # x equal to matrix 
        i <- NULL               # i equal to null
        set <- function(z) {    # set the x equal to z and i equal to null
                x <<- z         # using superassignment opertor  to assign z to x
                i <<- NULL
                }
        get <- function() x   #value of x assign to get which function run
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set,                 
        get = get,
        setinverse = setinverse,
        getinverse = getinverse)
        }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     function(x, ...) { # function which take one parameter x and other are option
             
        i <- x$getinverse()  # i equal to x inverse
        if (!is.null(i)) {     # if i is not equal to null
                message("Getting cached data") 
                return(i)
    }
    
    data <- x$get()     # data equal to x get 
    i <- solve(data, ...)
    x$setinverse(i)
    i
}

}
