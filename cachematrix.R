##This function MakeCacheMatrix creates a matrix objects that can cache its inverse
##Which is really containing functions to
1. Set the matrix
2. Get the matrix
3. Set the inverse
4. Set the inverse
MakeCacheMatrix<-function(x=matrix()){
                 inv<-Null
Set<-function(y){
       x<<-y
       inv<<-Null
 }
 get<-function()x
 setinv<-function(inverse) inv<<-inverse
 getinv<-function() inv
 List(Set=Set, Get=Get,setinv=setinv, getinv=getinv)
}

##This inverse Cachesolve computes the inverse of the matrix
##returned by the matrix MakeCacheMatrix above

cachesolve<-function(x,...){
inv<-x$getinv()
 ##if the inverse is already been calculated
 if(!is.null(inv)){
 message("getting cached data")
 return (inv)
 }

##otherwise, calculate the inverse
 mt.data<-x$get()
 inv<-solve (mat.data,...)
 x$setinv(inv)
 inv
 }
