##if
x=1:15
if(sample(x,1) <=10) {
  print("x is less than 10")
} else{
  print("x is greater than 10")
}  

## ifelse

ifelse()

#for

x=c("apples", "oranges", "bananas", "straw")
for(i in 1:4){
   print(x[i])
}
length(x)
for(i in 1:length(x))
{
  print(x[i])
}

for(i in seq(x))
{
  print(x[i])
}
for(i in 1:6){
  print(i)
}  

for(i in 1:6)
{
  print(x[i])
}


x=c("apples", "oranges", "bananas", "straw")
for(i in seq (1,4,2)){ ## seq for incrementing 
  print(x[i])
}


x=c("apples", "oranges", "bananas", "straw")
for(i in seq (2,4,2)){ ## seq for incrementing 
  print(x[i])
}

##nested loop

m=matrix(1:10,2,byrow = T, dimnames = list(c("a","b")))
colnames(m)=c("fff","fffggg","ff","rr","ttt")
for(i in seq(nrow(m))){
  for(j in seq(ncol(m))){
    print(m[i,j])
  }
}

##while

i=1
while(i<10)
{
  print(i)
  i=i+1
}

##repeat and breaks

sum =0
repeat
{
  sum = sum +2
  print(sum)
  if(sum>18)
  break
}
 

## next
for(i in 1:20)
{
  if(i%%2==1){
    next}
  else{print(i)}
  
  }

for(i in 1:20)
{
  if(i%%2==0)
  {
    print(i)
  }
}
i=0
while(i<20)
{
  i=i+2
  print(i)
  
}
