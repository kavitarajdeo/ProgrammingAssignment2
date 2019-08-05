## The program intends to return inverse of an inversible matrix

## The makeCacheMatrix is a function which can save a matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
   sp_inverse = NULL
    get <- function(){
        x
   }
   set <- function(y){
       x <<-y
       sp_inverse <<- NULL
   }
   getinverse <- function(){
       sp_inverse
   }
   setinverse <- function(inv){
       sp_inverse <<- inv
   }
   list(get=get,set=set,getinverse=getinverse,setinverse=setinverse)
}


## The cacheSolve function return inverse of a matrix if it doesnt already exists

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    print("In cacheSolve")
    if(is.null(x$getinverse())) 
        {
            inv <<- solve(x$get())
            x$setinverse(inv)
    }
    else 
        {
            x$getinverse()
        }
    inv
}
