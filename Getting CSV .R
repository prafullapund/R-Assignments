# WAP to imoprt student.csv file in to R
a=read.csv(file = "Student.csv",header = T)
a 
#WAP the average age of student from student.scv

z=mean(a$Age)
d=a[c("Age")]
g=a[c("year")]
mean(d)
max(d)
min(d)
plot(a$Age,a$year, type="s",xlab = "Age of Student", ylab = "Year")
warnings()
summary(a)


# WAP to convert the imported data set in to data frame

is.data.frame(a)
typeof(a)
class(a)
# WAP to find the duplicate in the column age
d=a[c("Age")]
z=a$Age
duplicated(a$Age)

