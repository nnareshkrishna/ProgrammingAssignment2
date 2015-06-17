## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){	#set function sets the value of x and clears the inv
		x <<- y
		inv <<- NULL
	}
	get <- function() x	#returns x
	setinverse <- function(inverse) inv <<- inverse		#sets inverse
	getinverse <- function() inv		#returns inverse
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getinverse()
 	if(!is.null(inv)){	#Value is cached....
		message("data exists...getting cached data....")
		return (inv) 
	}
	temp <- x$getinverse		#get value using 'getinverse'
	inv <- solve(temp)
	x$setinverse(inv)
	inv
}

