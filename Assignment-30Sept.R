## create a functions as follows
pow=function(x,y){
  result=x^y 
  print(result)
}
pow(8,2)
pow(10,2)

# 2
check=function(x){
if(x>0){
result = "positive"
}
else if (x<0){
result ="Negative"
}else{
  result="zero"
}
return(result)
}

check(1)
check(-110)
check(0)

#3


multi_return = function(){
  my_list=list("color"="red", "size"=20,"shape"="round")
  return(my_list)
}

a=multi_return()
a$color
a$size
a$shape

#4

recursive.factorial <- function(x) { 
  if (x == 0) return (1) 
  else return (x * recursive.factorial(x-1)) 
} 
recursive.factorial(5) 
recursive.factorial(7) 
recursive.factorial(120) 

# 1.	R program to find the factorial of a number


facto = function(x){
  if(x<0){
    print(paste("Error! Factorial of a negative number",x, "does not exist"))
  }
  if(x==0){
    print("Factorial of 0 is 1")
  }
  else
  { 
    a=1
    while(x>0){
      for (i in 1:x) {
        a=a*i
      }
      print(paste("factorial of", x ,"is"))
      return(a)      
    }
  }
}
facto(4)


fa=function(x)
{
  a=1
  for(i in 2:x)
  {
    a=a*i
  }
print(a)
}

fa(4)
#2.	R program to check if the number is prime

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

#3.	R program to find the factors of a number
q=1
myfact=function(x)
{
  print(paste("the factors of",x, "are:"))
  for(i in 1 :x)
  {
    if(x%%i==0)
    {
      
      q=c(q,i)
      }
  }
print(q[-1])
}

myfact(12)