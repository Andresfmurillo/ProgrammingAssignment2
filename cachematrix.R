### Programming Assignment 2: Lexical Scoping: Caching the Inverse of a Matrix

## 1.  `makeCacheMatrix`: This function creates a special "matrix" object that can cache its inverse.    
## Two functions that cache the inverse of a given matrix. The purpose of this function is to create a matrix object that will cache its inverse .

        makeCacheMatrix <- function(x = matrix()) {
                m <- Null
                set <- function(y){
                        x <<- y
                        m <<- Null
                }
                get <- function()x
                setinverse <- function(inverse) m <<- inverse
                getinverse <- function()m
                list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        }
        
##2.  `cacheSolve`: This function computes the inverse of the special "matrix" returned by `makeCacheMatrix` above. If the inverse has already been calculated (and the matrix has not changed), then `cacheSolve` should retrieve the inverse from the cache.
        
## The following matrix will return an inverse matrix of 'x'
        
        cacheSolve <- function(x, ...) {
                m <- x$getinverse()
                if(!is.null(m)){
                        message('getting cached data')
                        return(m)
                }
                data <- x$get()
                m <- solve(data,...)
                x$setinverse(m)
                m
        }
