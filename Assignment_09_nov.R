#1
a=read.csv(file = "input.csv",header = T)
b=matrix(1:100,nrow=10,ncol=10)
x=write.csv(b,"pra.csv")
z=read.csv("pra.csv")
#Find out number of the columns in the file
ncol(a)

#Find out number of the rows in the file

nrow(a)

#get the maximum salary

max(a$Salary)

max(a["Salary"])

#Get the details of the person with max salary

m1=subset(a,a$Salary==max(a$Salary))
m1

#Get all the people working in the IT dept.

m2=subset(a,a$Dept=="IT")
m2
# get the person in IT dept whose salary is greater than 600
m3=subset(a,a$Dept=="IT" & a$Salary>600)
m3

# get People who joined on or after 2014
m4=as.Date("2014-01-01")
m5=subset(a,a$Start_date > a$Start_date(as.Date("2014/01/01")))  
as.Date(a$Start_date,format='%m/%d/%Y')
as.Date(a$Start_date,format="%y/%d/%m")
m5=subset(a,a$Start_date > m4)

#2.	Write a programme to create ouput.csv file from input.csv file with start_date greater than "2014-01-01".

m6=write.csv(m5,file="output.csv",row.names = FALSE)

#3
insurance=read.csv(file = "insurance.csv")

View(insurance)
#I.	Explore and prepare the data using the R programming functions.

summary(insurance)

#	Find the average age.

t1=mean(insurance$age)
t1

#	Find the average expenses

t2=mean(insurance$expenses)
t2

#Find the details of female with maximum age.

t4=subset(insurance, insurance$sex=="female" & insurance$age==max(age))
t5=max(t4$age)


# Find the male with minimum number of children
t6 = subset(insurance,insurance$sex=="male")
t7=subset(t6,t6$children==min(t6$children))

# Find out the number of people from southwest region

t8= subset(insurance,insurance$region=="southwest")
dim1=dim.data.frame(t8)
dim1
length(t8$age)

#	Find out the number of female smokers

t9=subset(insurance,insurance$sex=="female" & insurance$smoker=="yes")
length(t9$smoker)

#	Find out the number of male smokers
p1=subset(insurance,insurance$sex=="male" & insurance$smoker=="yes")
length(p1$smoker)

#	Find out the females having 2 children and have maximum BMI but non smokers.
p2=subset(insurance,insurance$sex=="female" & insurance$children==2 & insurance$smoker=="no")
p3=subset(p2,p2$bmi==max(p2$bmi))
p3
#	Find the correlation between age,bmi,children,expenses
summary(insurance)
cor(insurance$age,insurance$bmi)

#	4.Write a programme to concatenate the strings ???Hello??? ???How??? ???are you????
z="???Hello??? ???How??? ???are you????"
a="Hello"
b="how"
d="are you?"
paste(a,b,d,collapse = NULL)
paste(a,b,d,sep = "")

#5.	Count the number of characters in the string  ???Hello, how are you????
a="Hello how are you?"
nchar(a)

#6	Change the case of the string ???Hello, how are you????

a="Hello how are you?"

toupper(a)
tolower(a)

#7	Extract ???Hello??? from ???Hello, how are you????

a="Hello how are you?"

result= substring(a,1,5)

#8	Find out all the vowels and consonant  in the string ???Hello??? 

a="Hello"
b=c("a","e","i","o","u")
 for(i in seq(nchar(a))) 
{
    d=substr(a,i,i)
   if(d%in%b)
   { 
     print(d)
     }
}




#9	Remove the space from the string ???Hello, how are you????


a="Hello how are you?"
nchar(a)
gsub(" ", "",a)
paste(a,sep="",collapse = "")
sub(" ","",a)
#10.	Write a programme to insert ???abc??? on 4th space of the string ???xyz pqr???.

a="xyz pqr"
nchar(a)

gsub(" ", "abc",a)

#11.	Find out the numbers in the string ???abc976the45u???

a="abc976the45u"

for (i in 1: nchar(a)) {

x=substr(a,i,i) 
if(!x%in%letters){
  print(x)
 }  
}

