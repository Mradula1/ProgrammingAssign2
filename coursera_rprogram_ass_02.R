# Name: Mradula Singh
# Work: Coursera R programming Assignment-02
## Programming Assignment 02: Caching the Inverse of a Matrix

## Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than
## computing it repeatedly.
## makeCacheMatrix function creates a special "matrix" object that can cache its inverse.
## Its purpose is to store a matrix and a cached value of the inverse of 
# matrix. Following functions are used withen this function:
# 1. setMatrix : sets the value of a matrix
# 2. getMatrix : gets the value of a matrix
# 3. setInverse : sets the value of inverse of the matrix
# 4. getInverse : gets the value of inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
        InvMat <- NULL
        set <- function(y) {
                x <<- y
                InvMat <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) InvMat <<- inverse
        getInverse <- function() InvMat
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
## cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse
## has already been calculated and the matrix has not changed, then cacheSolve function retrieves the inverse from the
## cache.
## if X is a square invertible matrix, then solve(X) function can be used to return its inverse.
## Here we are assuming matrix to be invertible.


cacheSolve <- function(x, ...) {
# get the cached value
        InvMat <- x$getInverse()
# if a cached value exists return it
        if (!is.null(InvMat)) {
                message("getting cached data")
                return(InvMat)
        }
# otherwise get the matrix, calculate the inverse of matrix and store it in the cache
        mat <- x$get()
        InvMat <- solve(mat, ...)
        x$setInverse(InvMat)
# returns the inverse
        InvMat
}
