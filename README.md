Test Cases: For Verifying the functions
> source("path/to/file/coursera_rprogram_ass_02.R")

#create a square matrix (beacause `solve` function only handles square matrices )
  > my_matrix <- makeCacheMatrix(matrix(1:4, 2, 2))
  
  > my_matrix$get()

          [,1] [,2]
    [1,]    1    3
    [2,]    2    4
    
> my_matrix$getInverse()

     NULL
> cacheSolve(my_matrix)

          [,1] [,2]
    [1,]   -2   1.5
    [2,]    1  -0.5
 
#The second time we run the function with same input matrix, we get the cached data

> cacheSolve(my_matrix)

   getting cached data
 
          [,1] [,2]
     [1,]   -2  1.5
     [2,]    1 -0.5
> my_matrix$getInverse()

         [,1] [,2]
    [1,]   -2  1.5
    [2,]    1 -0.5
> my_matrix$set(matrix(c(2, 2, 1, 4), 2, 2))

> my_matrix$get()

         [,1] [,2]
    [1,]    2    1
    [2,]    2    4
> my_matrix$getInverse()

     NULL
> cacheSolve(my_matrix)

           [,1]       [,2]
    [1,]  0.6666667 -0.1666667
    [2,] -0.3333333  0.3333333
> cacheSolve(my_matrix)

getting cached data

           [,1]       [,2]
    [1,]  0.6666667 -0.1666667
    [2,] -0.3333333  0.3333333
> my_matrix$getInverse()

           [,1]       [,2]
    [1,]  0.6666667 -0.1666667
    [2,] -0.3333333  0.3333333
