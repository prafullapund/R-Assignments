#1.1	Create a matrix of 10 by 10 filled with values from -98 to100 and Return the product of each of the rows. 
a=c(-98:100)
b=sample(a,100)
mymatrix=matrix(b,nrow=10,ncol=10)
d=apply(mymatrix,1, prod)
d
#1.2	Return the sum of each of the columns. 
e=apply(mymatrix, 2, sum)
e
#1.3	Return a new matrix whose entries are those of 'm' modulo 10.
q=apply(mymatrix,1:2, FUN = function(x) x%%10)
q

#2. We have the incomes of the same tax accountants 

income=c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43
)

tapply(income, income, mean)

q=sample(income,length(income))
mean(q)
mean(income)

#3 Using apply construct a 5 x 6 matrix and sum the values of each column.

t=matrix(c(1:30), nrow=5, ncol=6)
apply(t, 2, sum)

#4 Apply linear regression and predict the value of ???Y??? when ???X=170???

x=c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y=c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

plot(x,y)

lm1=lm(y~x)
newdata=data.frame(x=170)
predict(lm1,newdata)


y=0.6746*170-38.4551

#5 You have a profit made based on the number of seconds that sales team is on a call. If you know the profit made, can you calculate how long the call took?

calls=c(23,28,39,48,64,75,88,96,97,109,118,149,150,156,165)
profit=c(1,2,3,3,4,4,5,6,6,7,8,8,9,10,10)

lm2=lm(calls~profit)
newdata=data.frame(profit=5)
predict(lm2,newdata)

#6

a=read.csv(file="insurance.csv")
str(a)
summary(a$expenses)

library(ggplot2)
ggplot(a, aes(x=expenses)) +geom_histogram() +ylab("frequency")
hist(a$expenses)
hist(a$age)
ggplot(a,aes(x=a$expenses))+geom_density()  

table(a$region)
cor(a[c("age","bmi","children","expenses")])
pairs(a[c("age","bmi","children","expenses")])
library("psych")
pairs.panels(a[c("age","bmi","children","expenses")])
