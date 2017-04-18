a=c(1,2,3,4,5)
d=c(6,7,8,9,10)
e=c()
myfun = function(x,z)
{
  
  if(length(a)==length(d))
  {
    for(i in 1: length(a)) 
    { 
      e=c(e,(a[i]+d[i]))
      
      
    }
    print(e)  
  }
  
  else 
  {
    print("vectors are not of same length")
  }
}

myfun(a,d)


# comaprision of 2 vectors
a=c(1,2,1,5,56,7)
b=c(1,2,1,4,5,7)
d=c()
v=which(a==b,T)#gives position
cnt=length(which(a==b,T))

for(i in 1:length(a))
{
  for(j in 1:length(b))
    if(a[i]==b[j])
    {
      d=c(d,a[i])
    
    
  }
}

unique(print(d))