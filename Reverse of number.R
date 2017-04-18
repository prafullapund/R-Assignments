##WAP to find out reverse a number and find pallindrome
x=123
b=0
temp=x
while(x>0){
  r=x%%10
  print(r)
  b=(b*10)+r
  print(b)
  x=x%/%10
  print(x)
}
b
if(temp==b){
  print("palendrome")
}else {
  print("not palendrome")
}

##WAP to find out reverse a string

x = "Prafulla"
x=substring(x,nchar(x):1,nchar(x):1)
c=paste(x,collapse = "")
c
