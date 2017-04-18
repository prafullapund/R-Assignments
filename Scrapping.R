
# a <- read_delim("http://portal.amfiindia.com/DownloadNAVHistoryReport_Po.aspx?frmdt=02-Jan-2017&todt=10-Jan-2017&tp=2", 
#                 ";", escape_double = FALSE, col_types = cols(
#                   `Scheme Code` = col_character(),
#                   `Scheme Name` = col_character(),
#                   `Net Asset Value` = col_double(),
#                   `Repurchase Price` = col_double(),
#                   `Sale Price` = col_double(),
#                   Date = col_character()
#                 ),trim_ws = TRUE)
# 
# a <- read_delim("http://portal.amfiindia.com/DownloadNAVHistoryReport_Po.aspx?frmdt=02-Jan-2017&todt=10-Jan-2017&tp=2", 
#                 ";", escape_double = FALSE, col_types = cols(
#                   `Scheme Code` = col_character()),trim_ws = TRUE)
# 
# 
# a <- read_delim("http://portal.amfiindia.com/DownloadNAVHistoryReport_Po.aspx?frmdt=02-Jan-2017&todt=10-Jan-2017&tp=2", 
#                 ";", escape_double = FALSE,trim_ws = TRUE)

library(readr)
a1 <- read_delim("http://portal.amfiindia.com/DownloadNAVHistoryReport_Po.aspx?frmdt=01-Dec-2016&todt=05-Jan-2017&tp=2", 
                 ";", escape_double = FALSE, col_types = cols(`Scheme Code` = col_number()), 
                 trim_ws = TRUE)
a1=na.omit(a1)
#summary(a)

attach_till_today=function(a)
{
  last_date_in_a=as.character(a[nrow(a),6])
  a=as.Date(last_date_in_a, "%d-%b-%Y")+1
  from=format(a, "%d-%b-%Y")
  to=format(Sys.time(), "%d-%b-%Y")
  
  library("urltools")
  z=param_set("http://portal.amfiindia.com/DownloadNAVHistoryReport_Po.aspx?frmdt=01-Dec-2016&todt=05-Jan-2017&tp=2","frmdt",from)
  z=param_set(z,"todt",to)
  
  c = read_delim(z, ";", escape_double = FALSE, col_types = cols(`Scheme Code` = col_number()), 
                 trim_ws = TRUE)
  c=na.omit(c)
  #new_data=rbind(a,c)
  return(c)
}
c1<-attach_till_today(a1)
f1<-rbind(a1,c1)
mydata=attach_till_today(a1)

write.csv(x = f1,file = "~/SS.csv")


s1<-read.csv(file = "~/SS.csv")
s1<-s1[,-1]
View(s1)

ind<-order(s1$Scheme.Code)
new_s1<-s1[ind,]
View(new_s1)
write.csv(x = new_s1,file = "Sort SS.csv",row.names = FALSE)


library(ggplot2)

mutual=read.csv("Sort SS.csv")
str(mutual)
a=subset(mutual,mutual$Scheme.Name=="Axis Capital Protection Oriented Fund - Series 5 - Dividend option")
b=subset(mutual,mutual$Scheme.Name=="HDFC FMP 1919D January 2013 (1) Growth Option")
d=subset(mutual,mutual$Scheme.Name=="Birla Sun Life Capital Protection Oriented Fund - Series 19 - Direct Plan-Growth")
#z=data.frame(a,b,d)
m4=as.Date("01-12-2016")
m22=format(m4,"%d-%b-%Y")
m5=subset(a,mutual$Date > m22)  
m5
bse=read.csv("bse_index.csv")
View(bse)
m=as.Date("2016-12-01")
m22=format(m, "%d-%b-%Y")
m11=subset(bse,bse$Date > m11)  
m11


library(date)
ggplot() + 
geom_line(aes(x=as.Date(parse_date_time(a$Date,"%d-%b-%y")),y=a$Net.Asset.Value), colour = 'red',scales="free_y") +
geom_line(aes(x=as.Date(parse_date_time(bse$Date,"%d-%b-%y")),y=bse$Close),colour = 'blue',scales="free_y") 

plot(as.Date(parse_date_time(a$Date,"%d-%b-%y")),a$Net.Asset.Value,type='l',col='green')
par(new=T)
plot(as.Date(parse_date_time(bse$Date,"%d-%b-%y")),bse$Close,type='l',col='blue')

