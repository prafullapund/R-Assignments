# Exc 1
m<-matrix(c(1:5,11:15), nrow = 5, ncol = 2)
`%summary%` <- function(x,type)
{
  switch (type, min = min(x),
          max = max(x),
          sum = sum(x)
  )
}
`%summary%`(m,"min")
`%summary%`(m,"max")
`%summary%`(m,"sum")

#Exc 2
a = matrix(c(1, 2, 3, 4, 5, 6, 7, 8),
           nrow = 4,
           ncol = 2,
           byrow = TRUE)
d = matrix(c(11,2,3,14,15,16,17,18),
           nrow = 4,
           ncol = 2,
           byrow = TRUE)
cnt=0
for (i in seq(nrow(a)))
{
  for (j in seq(ncol(d)))
  {  if(a[i, j] == d[i, j])
    cnt=cnt+1
  }
}
print(cnt)
#Exc 3


a = c(100,200,300,4900,500)
b = c(100,900,300,400,5500)
scplot <- function(x,y){
  plot(x,y,type="b", main = "myplot", xlab = "x-axis", ylab = "y-axis",col="blue")
  cor1<-cor(x,y)
  print(cor1)
}
scplot(a,b)

#Exc 4


m1<-matrix(c(12,13,19,14,15,21,13,14,9), nrow=3,byrow=T)
m2<-matrix(c(12,2,12,41,15,2,31,01,15), nrow=3,byrow=T)

print(2*m1)
print(m1*m1)
print(m1%*%m1)
print(m1%*%m2)
outer(m1,m2,"+")
print(t(m2))#transpose of matrices
print(solve(m1))#Inverse of matrix

# Exc 5

7:11
seq(2,9)
seq(4,10,by=2)
seq(3,30,length=10)#Shortest way to write tables.
seq(6,-4,by=-2)

#Exc 6

x<-c(5,8)

rep.int(6,5)
rep(c(5,8),4)
rep(x,each = 4,3)

#Exc 7

dim.data.frame("tinting")
dim.data.frame("possum")
dim.data.frame("possumsites")

#Exc 9


gender <- factor(c(rep("female", 91), rep("male", 92)))
table(gender)

gender <- factor(gender, levels=c("male", "female"))
table(gender)
gender <- factor(gender, levels=c("Male", "female"))
table(gender) > rm(gender)


# Exc 10

paste("Leo", "the", 'lion')
paste("a", "b")
paste("a", "b", sep="")
paste(1:5)
paste(1:5, collapse="")

# Exc 11

x<-50
curve(sin(x),from =0, to =2*pi)
curve(2*x^3+x^2-2*x+10,from =-2, to =2)
curve(log(x),from =0, to =10,col="magenta")
curve(5-x,from =0, to =10,col="red", add=T)

# Exc 12

library(UsingR)
data(cfb)
attach(cfb)

hist(INCOME)
mean(INCOME)
mean(INCOME, trim = 0.1)
mean(INCOME, trim = 0.5)
mean(INCOME, trim = 0.7)
mean(INCOME, trim = 0.9)

median(INCOME)

library(moments)
skewness(INCOME)
kurtosis(INCOME)



# Exc 14

library(MASS)
data(cats)
attach(cats)
plot(Hwt~Bwt)
abline(lm(Hwt~Bwt))
boxplot(Hwt~Sex, xlab='gender', ylab='heart weight')
plot(Hwt~Bwt, xlab='body weight (kg)', ylab='heart weight (g)', type='n')
points(Hwt[Sex=='M']~Bwt[Sex=='M'])
points(Hwt[Sex=='F']~Bwt[Sex=='F'], pch=3)