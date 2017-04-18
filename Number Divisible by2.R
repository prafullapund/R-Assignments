a=c(1,2,3,4,5)
count=0
for(i in 1:length(a))
{  
  if (a[i]%%2==0)
  {
  count=count+1
  }
}
print(count)
