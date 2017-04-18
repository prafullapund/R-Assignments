a = c (1,2,3,4,5)
b = c (6,7,8,9,10)
c = c (a,b)
d=c(TRUE,FALSE)
e=c("ab","cd", "ef")
f=c(TRUE,"ab",123)
f1=c(TRUE,F,123)
f
a=c(TRUE,FALSE,TRUE,FALSE)
b=c(TRUE,TRUE,FALSE,FALSE)
a & b
a && b
a|b
a||b
a=c(1,2,3,4,5,6,7,8,9,10)
a[3]
a[1:7]
a[-8]
a[c(2,8)]
a[c(-2,-8)]
a[9]=90
a
mymatrix=matrix(a,nrow=5,ncol=2)
mymatrix=matrix(a,nrow=5,ncol=2,byrow=T)
mymatrix=matrix(a,nrow=2)
mymatrix
z=c(1,2,3,4,5,6,7,8,9)
mymatrix=matrix(a,nrow=5,ncol=2)
mymatrix[,2]
mymatrix[1,]
mymatrix=matrix(a,nrow=5,ncol=2)
mymatrix
mymatrix[1,1]

custId=c(101,102,103,104)
custname=c("AA","BB","CC","DD")
credit=c(10000,10000,12000,13000)
debit=c(8000,2000,4000,3000)
mydataframe=data.frame(custId,custname,credit,debit)
mydataframe
mydataframe$custId
mydataframe$custname
mydataframe[1]

custId=101
custname="AA"
tmatrix=matrix(c(1000,1000,1000,1000,700,800,800,900,nrow=2,byrow=T))
tmatrix
mylist=list(custId,custname,tmatrix)
mylist
mylist[[1]]
mylist[[2]]
mylist[[3]]
mylist[[3]][1.2]
tmatrix
tmatrix=matrix(c(1000,1000,1000,1000,700,800,800,900,nrow=2,byrow=T))




