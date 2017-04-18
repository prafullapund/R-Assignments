switch(2,"red", "green","blue")
x=switch(1,"red", "green","blue")
switch("color", "color" = "red", "shape"="square", "length"=5)
z=c("yellow","blue")
switch ("yellow",z)
center=function(x,type)
{
  switch(type, mean=mean(x),
         median=median(x),
         trimmed= mean(x,trim=.1))
}

x=1:10
center(x,"mean")

x <- c(0:10, 50)
xm <- mean(x)
c(xm, mean(x, trim = 0.10))


a=2
b=5
f=function(x)
{  x=0
a<<-100
print(x)
print(a)
}
print(a)
'+' (10,20)
f(2)

'%divisible%'=  function(x,y)
{
  if(x%%y==0) return(T)
  else return(F)

}

6%divisible%2

'%divisible'(5,4)

11/5
11%/%5

11%*%5.6

z=c(100,200,300,400,500)
a=c(10,20,30,40,50)
plot(z,a, type = "h")


z=c(100,200,300,400,500,12,3,4,5,6,8,9,0)
a=c(10,20,30,40,50)

hist(z)
plot(z,a, type = "l")
text(100,20,"aaaa", col="red")

x=seq(0,2*pi,0.1)

y=sin(x)
y
y1= cos(x)
y2= tan(x)

plot(x,y, col="green", type= "l", lwd= 3)

m=matrix(c(1:10,11:20), nrow=10,ncol=2)
m
apply(m,1, sqrt)
apply(m,2, sqrt)
l=list(a=1:10, b=11:20)
l
lapply(l, mean)
outer(m,m)
