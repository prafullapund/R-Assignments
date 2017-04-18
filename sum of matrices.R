a = matrix(c(1, 2, 3, 4, 5, 6, 7, 8),
           nrow = 4,
           ncol = 2,
           byrow = TRUE)
d = matrix(c(2, 3, 4, 5, 6, 7, 8, 9),
           nrow = 4,
           ncol = 2,
           byrow = TRUE)
z = matrix(,nrow(a),ncol(d))
z
myfun = function()
{
  if (dim(a) == dim(d))
  {
    for (i in seq(nrow(a)))
    {
      for (j in seq(ncol(d)))
      {
        z[i, j] = a[i, j] + d[i, j]
      }
   #   print(z)
    }
    return(z)
  }  
  else
  {
        print("Matrices are not of same dimension")
  }
}    
myfun()