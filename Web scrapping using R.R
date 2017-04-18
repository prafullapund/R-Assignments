#Web scrapping using R

library(XML)
library(RSelenium)
# url <- "https://www.flightradar24.com/data/flights/6e138" •
checkForServer() # download Selenium Server, if not already presnet
startServer() # start Selenium Server
remDr <- remoteDriver() # instantiates a new driver
remDr$open() # open connection

remDr$navigate(url) # grab and process the page (including scripts)
webElem <- remDr$findElement(using = 'id', value = "tbl-datatable")
finaldata=strsplit(as.character(webElem$getElementText()[1]), '\n')