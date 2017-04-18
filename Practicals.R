# 1Declare and define a variable to store a numeric value
a=12
b=13
c=a+b
c
func=function(x,y)
{
  z=x+y
z
  }

func(3,4)


#2 - Declare and define a string variable

x= "Prafulla"

#3 Declare and define a variable which will store set of values
w=c(1,2,3,4,5) 
w

r= c("a","b","c","d")
r

r[(3)]

#4 find out the reciprocal of variable
1/a

#5 find out of the reciprocal of vectors
1/w

# 6 declare and define 2 numeric vectors and store their sum into 3rd vector

a=c(1,2,3,4,5)
b=c(6,7,8,9,10)
d=a+b
d

# 7 declare and define 2 numeric vectors and store their multiplication into 3rd vector

d=a*b
d

#8 Declare and define 2 numeric vectors which will hold set of values and swap the values of these vectors using 3rd vectors

a=c(1,2,3)
b=c(4,5,6)

d=a
a=b
b=d
a
b
#9 Declare and define two vectors and swap the values of two vectors without using 3rd vectors

a=c(1,2,3)
b=c(4,5,6)

a=a+b
b=a-b
a=a-b
a
b

#10 Declare and define two vectors and swap the values of two vectors using bitwise operators

a=c(1,2,3)
b=c(4,5,6)

a = bitwXor(a,b)
b = bitwXor(a,b)
a = bitwXor(a,b)
a
b

#11 Declare a var and find out which is largest number
a=c(5,6,7,9,333,5555)

b=sort(a)
s=b[1:1]#smallest number
l=b[length(b)]#largest


#12 Declare and define 3 vectors and find out the largest one

a=112
b=22
c=55
if(a>b)
  {
  if(a>c)
  print("A is largest")
  else
    print("C is the largest")
  }else
  {
  if(b>c)
  print("b is largest")
  else
  print("c is largest")
  }

   
#12 Declare and define 3 vectors and find out the smallest one
  
a=-4
b=1
c=2

if(a<b)
{
  if(a<c)
    print("A is the smallest")
  else
    print("c is the smallest")
}else
{
  if(b<c)
    print("b is the smallest")
  else
    print("c is the smallest" )
}
#13 Declare and define 3 vectors and find out the second largest one
  
a=1
b=22
c=33333
if(a>b && a>c)
{
  if(b>c)
    print("B is 2nd largest")
  else
    print("C is 2nd largest")
}else if (b>c && b>a)
  {
    if(c>a)
    print("c is 2nd largest")
  else
    print("a is 2nd largest")
}else if (c>a && c>b)
{
  if(b>a)
    print("b is 2nd largest")
  else
    print("a is 2nd largest")
}



#14 To print the table of two
a=2
 for(i in 11:a )
 {
  print(a)
  a=a+2
 }
#using while
a=2
while(a<=20)
{
  print(a)
  a=a+2
}

#15 To print the table of 2 to 10
a=2:10
while(a<=20:100)
{
  print(a)
  a=a+2:10
}

#16 To print power of number
z=1
powfun=function(x,y)
{ 
 for(i in 1:y)
  {
  z=z*x
  }
print(z)  
}

powfun(2,4)


#17 write a function for calculating the sum of two numbers
  
  func=function(x,y)
  {
    z=x+y
   print(paste("The sum of",x, "and", y, "is",z ))
   }
func(13,41)

#18 write a program to find out the given number is even or odd.

funcc= function(x)
{
  if(x%%2==0)
    {
    print("the given number is Even")
     }
  else("The given number is odd")
}
funcc(5)

#19 write a program to find prime number

primeno= function(x)
{
flag=1
  for(i in 2:(x-1))
  {
     if(x%%i==0)
    {
      flag=0
      break
       }  
   }
if(flag == 1) {
  print(paste(x,"is a prime number"))
} else {
  print(paste(x,"is not a prime number"))
}
}
primeno(6)
primeno(x = as.integer(readline(prompt = "Enter a number:")))

#20 Febbonacci

funfab=function(x)
{
  c=0
  a=0
  b=1
  print(b)
  for(i in 1: x)
{
  c=a+b
  print(c)
  a=b
  b=c
}
} 
funfab(x=as.integer(readline(prompt="How many terms:"))) 

  
  
