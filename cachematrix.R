## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This program exhibits the use of cache properties to reduce computation time while computing the inverse of a matrix
## makeCacheMatrix function is used to store, fetch and update the value of inverse as and when required.

makeCacheMatrix <- function(x = matrix()) {
    inv<-NULL
    set<-function(y){
      x<<-y
      inv<<-NULL
    }
    get<-function()x
    setInverse<-function(invr)inv<<-invr
    getInverse<-function()m
    list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function
## cacheSolve function in the main computing function that checks if the inverse has already been computed.
## if so, it calls the getInverse funciton in makeCacheMatrix to fetch the value of inverse
## else, it computes the value of inverse and calls the setInverse function in makeCacheMatrix to cache the value of inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getInverse()
  if(!is.null(inv))
  {
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  inv<-solve(x, ...)
  x$setInverse(inv)
  inv
}
