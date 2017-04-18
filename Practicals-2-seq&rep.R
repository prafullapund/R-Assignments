x=c(5,2,1,4)
xx=c(1,10,15,18)
y=rep(1,5)
z=c(T,F,T,T)
w=c("mark","betty","peter")
sum(x)
range(x)
length(x)
sum(y)
c(x,y,13)
xx-x
c(x,12)*y
1:6+11:9+1:2
1:2
x=2
x=2 &z
substring(w,2,4)
paste(substring(w,1,2),substring(w,5,5),sep="..")
cbind(x,xx)
cbind(2,6:1)

rep(c(3,1,4),2)
seq(1.1,1.6,by=0.1)
seq(1,8, by=2)
#2
#a
seq(1,9,1)

#b
rep(c("m","w"),6)
#c
rep(c(1,2,3,4),3)

#d

c(rep(4,3),rep(3,3),rep(2,3),rep(1,3)) 

#e
c(rep(1,1),rep(2,2),rep(3,3),rep(4,4))

or
rep(1:4,times=seq(1:4) )
rep(1:5, times=seq(1:5))

rep(seq(1,4), by=1,each=3)

#f
rep(seq(1,11,2),each=2)

#3a
m=matrix(c((1:5),(101:105),(201:205),(301:305)), nrow = 5)

m1=diag(5,nrow=10,ncol=10)

#b

a=4
class(xx)
dim(x)
str(x)
summary(x)

#4
s=c(1:100)
sample(s,50)

#5

write.table(m1,"mymymatrix1",sep=",", row.names = T,col.names=T)
a=read.table('mymymatrix1',header=T,sep=',')
a

for(i in 1:nrow(a))
{
  for(j in 1:ncol(a))
  {
    if(a[i,j]==0)
     a[i,j]=10
  }
}
a
write.csv(m1,file='mymymatrix.csv',sep='\t',col.names=T,row.names=T)
read.csv('mymymatrix.csv',header=T,sep=",")
