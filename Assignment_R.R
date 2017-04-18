##exe1
empid=c(101,102,103,104)
name=c("A","B","C","D")
age=c(31,35,33,35)
income=c(25000,35000,38000,37000)
Mdataframes=data.frame(empid,name,age,income)
Mdataframes
Mdataframes$empid
Mdataframes$name
x=data.frame(empid,name)
x

##exe2
y=c(1,2,3,4,5,6,7,8,9,10,11,12)
x.mat=matrix(y,nrow=3,ncol=4)
x.mat=matrix(y,nrow=3,ncol=4,byrow=F,dimnames=list(letters[1:3],letters[1:4]))
x.mat             

xx=cbind(x.mat,x.mat)
xx
xxx=rbind(x.mat,x.mat)
xxx
##rbind(xx,xxx) : Error

##exe3
x=c(1,2,3,4,5,6,7,8,9,10)
names(x)=letters[x]
names(x)

x[1:3]

x[c(1,10)]
x[c(-1,-2)]
x[x>5]
x[c("a","d")]
x[]
jj1=matrix(1:100,ncol=10)
jj1
jj1[1:5,]

jj1[1:4,x[x<3]]
x<3

#exe4

x.lis=list(a=1:10,b=letters[1:3],b=matrix(1:10,ncol=2))
x.lis
##x.lis$1 : Error
x.lis[2]
x.lis[[3]][,1]

#exe5

x.mat=matrix(1:10,ncol=2)
x.mat
x.mat+1
x.mat+x.mat
x.mat%*%t(x.mat)