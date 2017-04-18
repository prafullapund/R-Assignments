m=matrix(c(10,11,12,13,100,11),nrow=2,ncol=3,dimnames=list(c("ddddd","row1"),c("col2","col3","fffff")))
write.table(m, "mmydata.txt", sep="\t")
read.table("mmydata.txt")
write.table(mydata,"c:/mydata.txt", sep="\t")
write.table(mymatrix, "mydata.txt", sep="\t",row.names=TRUE,col.names = TRUE)

write.csv(mydata, file="Mydata.csv", row.names=FALSE)
write.csv(mymatrix, file="Mydata.csv", row.names=TRUE)

scan(file = "mmydata.csv", what = double(), nmax = -1, n = -1, sep = "")
d=scan(file = "", what = list(), nmax = 5, sep = " ")
d=scan(file = "", what = list("","",""), nmax = 5, sep = " ")

con=file("to do list.txt", open="r")
line <- readLines(con)
close(con)

newTxt <- unlist(strsplit(line, split = "\\s"))


substr(x,start=n1,stop=n2)
# Extract or replace substrings in a character vector.
 x <- "abcdef"
substr(x, 2, 4) ##is "bcd"
substr(x, 2, 4) <- "22222" ##is "a222ef"
sub(pattern, replacement,x, ignore.case =FALSE, fixed=FALSE)#Find pattern in x and replace with replacement text.

#If fixed=FALSE then pattern is a regular expression
#If fixed = T then pattern is a text string.
sub("\\s",".","Hello There")
#returns "Hello.There"


grep(pattern, x , ignore.case=FALSE, fixed=FALSE)# Search for pattern in x.
#If fixed =FALSE then pattern is a regular expression.
#If fixed=TRUE then pattern is a text string. Returns matching indices.
grep("A", c("b","A","c"), fixed=TRUE) #returns 2


strsplit(x,split)
#Split the elements of character vector x at split.
strsplit("abc", "")
#returns 3 element vector "a","b","c"


