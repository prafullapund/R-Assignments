n = c(2,333,455,77,3,555,67,74,554,66)
myfunct = function(n)
{
  even=c()
  odd=c()
  for(i in 1:length(n))
  {  
  if (n[i]%%2==0)
   {
    even= c(even,n[i])
   }
  else
   {
    odd = c(odd,n[i])
   }
  }
    number=list(e=even,o=odd)
   return(number)
}  
  
myfunct(n)