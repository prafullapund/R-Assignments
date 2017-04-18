gender=c(rep("male",20), rep("female",30))
gender
factor(gender) ## display in alphabatical order Femal male
as.numeric(factor(gender))
as.integer(factor(gender))
factor(gender,level=c("male","female"))

 