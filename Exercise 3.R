#Exercise 3 - 1
a=1
repeat{
print(a)
   a=a+1
if(a>5)
break()  
  }

#2
negativeorpositive= function(x)
{
  if(x>=0)
  {
    print(paste("Given number",x,"is positive"))
  }
  else
  {
   print(paste("Given number",x,"is negative"))
  }
}

negativeorpositive(2)

#3

q=1
while (q<10) {
  q=q+1
  print(q)
}

#4Create a vector with ???N??? elements and find the sum of N numbers using while loop
a=c(1,2,3,4,5)
sum=0
i=1
while (i<=length(a)) 
{
sum=sum+a[i]
i=i+1
}
print(sum)


##5
a=c(1,2,3,4,5)
sum=0
for (i in 1:length(a))
  sum=sum+a[i]
print(sum)


#6

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





#7

facto= function(x)
{
  a=1
  while(x>0)
  {
    for(i in 1:x)
    {
      a=a*i
    }
  return (a)
    }
}

facto(3)


#8. R program to check if the number is prime

prime=function(num)
{
  flag = 0
  # prime numbers are greater than 1
  if(num > 1) 
  {
    # check for factors
    flag = 1
    for(i in 2:(num-1)) 
    {
      if ((num %% i) == 0) 
      {
        flag = 0
        break
      }
    }
  } 
  
  if(num == 2)  
    flag = 1
  if(flag == 1) 
  {
    print(paste(num,"is a prime number"))
  }
  else
  {
    print(paste(num,"is not a prime number"))
  }
}
prime(2)

#9. R program to find the factors of a number

myfact=function(x)
{
  print(paste("the factors of",x, "are:"))
  for(i in 1 :x)
  {
    if(x%%i==0)
    {print(i)}
  }
}

myfact(3)