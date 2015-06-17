## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	inv <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) inv <<- mean
	getinverse <- function()m
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getinverse()
 	if(!is.null(inv)){
		message("data exists...getting cached data....")
		return inv 
	}
	temp <- x$getinverse
	inv <- solve(temp)
	x$setinverse(inv)
	inv
}

