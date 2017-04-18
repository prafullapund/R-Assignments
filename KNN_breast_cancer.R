ba=read.csv("breast cancer.csv")
anyNA(ba)
boxplot(ba)
summary(ba)
str(ba)
# drop the id feature altogether
bcancer=ba[-1]
head(bcancer)

ind=which(bcancer$diagnosis=="M",TRUE)
class1=bcancer[ind,]
class0=bcancer[-ind,]
ind0=sample(1:nrow(class0),round(0.80*(nrow(class0))))
ind1=sample(1:nrow(class1),round(0.80*(nrow(class1))))
train1=class1[ind1,]
train0 <- class0[ind0,]
test1 <- class1[-ind1,]
test0 <- class0[-ind0,]

train <- rbind(train1,train0)
test <- rbind(test1, test0)

#how data is divided of diagnosis
table(bcancer$diagnosis)

#converting the respone variable in factor
bcancer$diagnosis=factor(bcancer$diagnosis,levels = c("B","M"))

#Classifying diagnosis in percentage
round(prop.table(table(bcancer$diagnosis))*100,digits=1)

summary(bcancer[c("radius_mean","area_mean","smoothness_mean")])

#function for normalizing
normal=function(x)
{
  return ((x-min(x))/(max(x)-min(x)))
}

#checking the normalize function
normal(c(1,2,3,4,5))
normal(c(10,20,304,4000,5000))
bcancer[,2:31]=apply(bcancer[,-1],2,normal)
#bcancer_n=as.data.frame(lapply(bcancer[,-1], normal))
head(bcancer)
str(bcancer)

knnbcancer=knn(train[,-1],test[,-1],cl=as.factor(train$diagnosis),k=21,use.all=T)
summary(knnbcancer)

library(caret)

confusionMatrix(knnbcancer,test$diagnosis)



