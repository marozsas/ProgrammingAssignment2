# Results of Peer-graded Assignment: Programming Assignment 2: Lexical Scoping
## week 3

### Pre-requisite: Load the functions in the environment
To do this, simply copy-paste the definition of the two objects: makeCacheMatrix and cacheSolve

### puting them to work

Create an object my_matrix, initializing it with a random 4x4 matrix.
(I believe this is the same as my_matrix$set (matrix (runif(16), 4, 4)) )
Use set.seed to make this reproductible and get the matrix just to inspecting it


set.seed(10)
my_matrix <- makeCacheMatrix(matrix (runif(16), 4, 4))
my_matrix$get()
          [,1]       [,2]      [,3]      [,4]
[1,] 0.5074782 0.08513597 0.6158293 0.1135090
[2,] 0.3067685 0.22543662 0.4296715 0.5959253
[3,] 0.4269077 0.27453052 0.6516557 0.3580500
[4,] 0.6931021 0.27230507 0.5677378 0.4288094

Make sure there is no invert matrix for now.

my_matrix$getinv()
NULL

Now, use 'cacheSolve' to calculate the inverse of our matrix and store it in the internal cache

cacheSolve(my_matrix)
           [,1]       [,2]      [,3]       [,4]
[1,]  0.3887499 -0.7464892 -2.529318  3.0464526
[2,] -6.5060520 -4.8745794  7.191905  2.4913612
[3,]  2.0599017  0.6562332  1.558674 -2.7587232
[4,]  0.7758774  3.4332212 -2.542469 -0.5216341

Do it again and notice this time the cached matrix is returned.
This situation is indicated by the informative message "getting inverted matrix" below.

cacheSolve(my_matrix)
getting inverted matrix
           [,1]       [,2]      [,3]       [,4]
[1,]  0.3887499 -0.7464892 -2.529318  3.0464526
[2,] -6.5060520 -4.8745794  7.191905  2.4913612
[3,]  2.0599017  0.6562332  1.558674 -2.7587232
[4,]  0.7758774  3.4332212 -2.542469 -0.5216341
>

That is it !
