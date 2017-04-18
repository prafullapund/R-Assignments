#1
mymatrix=matrix(c(15,5,5,0,0,5,6,1,3,0,3,3,4,4,4,2),nrow=4,ncol=4,byrow=TRUE)

#2
z<-matrix()
  for(i in seq(nrow(mymatrix)))
   {
    for(j in seq(ncol(mymatrix)))
      {
      if(i==j)
       {
        z<-c(z,mymatrix[i,j])
        
         }
       }
  }
  print(z)

#3
mymatrix=matrix(mymatrix[1:2,],ncol=4,byrow = F)  

#4
d2= subset(iris,Species=="versicolor")
pairs(iris)
#5
d5=iris[order(iris$Sepal.Length,decreasing=T),]


#6 Calculate the benchmark statistics of the three variables of ethanol data set.
ethanol

library(SemiPar)
data(ethanol)
pairs(ethanol)
mean(ethanol)
mode(ethanol)
summary(ethanol)
sd(ethanol)
str(ethanol)
var(ethanol)

#7
apply(ethanol[1:3,], 2 ,quantile)
lapply(ethanol[1:3,],mean)
sapply(ethanol[1:3,],mean)
#8
z<-matrix()
for(i in seq(1,nrow(mymatrix)))
{
  for(j in seq(1,ncol(mymatrix)))
  {
    if(mymatrix[i,j]<6)
    {
      z<-c(z,mymatrix[i,j])
    }else{
      j=j+1
    
    }
  }
}
print(z)


#9
mymatrix=matrix(c(15,5,5,1,0,5,6,1,3,0,3,3,4,4,4,2),nrow=4,ncol=4,byrow=TRUE,dimnames =list(c("a","v","b","r"),c("www","rrrr","ttt","yy")))
mymatrix
apply(mymatrix, 1, function(x) all(x!=0))
apply(mymatrix, 2, function(x) all(x!=0))
#10
dataset1= cbind(observationA=16:8, observationB=c(20:19, 6:12))
dataset1  
#11
apply(dataset1,1,mean)

#12
apply(dataset1,2, sum)

#13
apply(dataset1,2, sort)

#14

apply(dataset1, 2, length)

#15
list1 = list(observationA = c(1:5, 7:3), observationB=matrix(1:6, nrow=2))
list1
#16

lapply(list1,length)

#17
lapply(list1, sum)

#18
X <- c (22,3,7,NA,NA,67) 
length(X)

#19

X = c(NA,3,14,NA,33,17,NA,41)
X[!is.na(X)]
length(X[is.na(X)])
#20
Y = c(1,3,12,NA,33,7,NA,21) 
Y[is.na(Y)]= 11
replace(Y,is.na(Y),11)
replace(Y,is.na(Y),mean(Y[!is.na(Y)]))
Y

#21
X = c(34,33,65,37,89,NA,43,NA,11,NA,23,NA) 
sum(is.na(X))
length(X[is.na(X)])
#22
c1 <- c(1,2,3,NA) 
c2 <- c(2,4,6,89) 
c3 <- c(45,NA,66,101) 

X <- rbind (c1,c2,c3, deparse.level=1) 
X
z=apply(X,1, function(y)all(y!=0))
z
 

#23
x <- scan("http://www.ats.ucla.edu/stat/data/scan.txt", what = list(age = 0,name = ""))
x
 
#26
x <- scan("http://www.ats.ucla.edu/stat/data/scan.txt", what = list(NULL, name = character()))
x

q=scan("https://www.facebook.com",what = list(name="prafulla"))

# To find out mediun
a=c(2,3,42,2,2,2,2,11,112,44.33,34.33,44.666,88.99,11111,2222222,11)
median(a)
s=sort(a)
if(length(a)%%2==0)
{
n=(length(s))/2
q=s[n]
t=s[n+1]
medi=(q+t)/2
print(medi)
}else{
n=(length(s)+1)/2
q=s[n]
print(q)
}


# To find out mean

a=1:1111
mean(a)
temp=0
for(i in 1:length(a))
{
  temp=temp+a[i]
}
print(temp/length(a))


# to find out Variance and sd

a=1:15
mn=mean(a)
b=sd(a)
var(a)
z=0
for(i in 1:length(a))
  {
    z=((a[i]-mn)^2)+z
    }
q=print(z/(length(a)-1))  
stddev=sqrt(q)


library(MASS)
data(cats)
attach(cats)
plot(Hwt~Bwt)
abline(lm(Hwt~Bwt))