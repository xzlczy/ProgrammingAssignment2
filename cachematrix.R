## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix function is used to create a list including 4 functions:set,get,setinvm and getinvm.

makeCacheMatrix <- function(x = matrix()) {
        inmatx <-null
        set <-function(y){
                x <<- y
                inmatx <<- null
        }
        get<-function() x
        setinvm <- function(solve) inmatx <<- solve
        getinvm <- function() inmatx
        
        list(set=set,get=get,
             setinvm=setinvm,
             getinvm=getinvm)

}


## cacheSolve function first check whether the inverse of the matrix has been calculated
## if yes, the function will cache it and return it.
## if not, the function will calculate it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inmatx <- x$getinvm()
        if(!is.null(inmatx){
                message("getting cached data")
                return(inmatx)
                }
           data <- x$get()
           inmatx <- solve(data,...)
           x$setinm(inmatx)
           inmatx
        
}
