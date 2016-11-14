library("dplyr")
library("xlsx")
library("lubridate")
setwd("C:/Sammy/R/Test/test/Data")
dt <- as.POSIXlt(Sys.Date())
cut_off_dt <- as.Date(floor_date(dt %m-% months(36),"month"))

ccd_sample <- read.xlsx("ccd.xlsx", sheetName = "ccd", header=T, colIndex = c(1:2,4:7), endRow = 100)
classes <- c("character","Date","character","integer","character","character")
ccd <- read.xlsx("ccd.xlsx", sheetName = "ccd", header=T, colIndex = c(1:2,4:7), colClasses = classes)
ccd <- filter(ccd,DATE >=cut_off_dt)
c <- tbl_df(ccd);rm(ccd)


summarize(c)
c_crdt <- group_by(c,CREDITCARDNO,TRANSCTIONTYPE)
summ <- summarize(c_crdt, amount=sum(AMOUNT))
summ <- as.data.frame(summ)
write.csv(summ,"summ.csv")