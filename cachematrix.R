## This function MakeCacheMatrix creates a matrix objects that can cache its inverse
## Which is really containing functions to:
 set the matrix
 get the matrix
 set the inverse
 get the inverse
## 

makeCacheMatrix <- function(x = matrix()) {
                 inv<-Null
                 set<-function(y){
                 x<<-y
                 inv<<-Null
             }
       get<-function()x
       setinv<-function(inverse) inv<<-inverse
       getinv<-function() inv
       List(Set=Set, Get=Get,setinv=setinv, getinv=getinv)
}


## This inverse cachesolve computes the inverse of the matrix returned by the matrix MakeCacheMatrix above

cacheSolve <- function(x, ...) {
        inv<-x$getinv()
       
        if(!is.null(inv)){
        message("getting cached data")
        return (inv)
       }
       mt.data<-x$get()
       inv<-solve (mat.data,...)
       x$setinv(inv)
       inv
}

