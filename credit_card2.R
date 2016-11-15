library("dplyr")
library("xlsx")
library("lubridate")
library("tidyr")
setwd("C:/Sammy/R/Test/test/Data")
dt <- as.POSIXlt(Sys.Date())
cut_off_dt <- as.Date(floor_date(dt %m-% months(36),"month"))

classes <- c("character","Date","character","integer","character","character")
ccd <- read.xlsx("ccdata_v1.xlsx", sheetName = "ccd", header=T, colIndex = c(1:2,4:7), colClasses = classes)
c <- tbl_df(ccd);rm(ccd)
result <- spread(summarize(group_by(
      filter(c,DATE >=cut_off_dt,STATUS=="SUCCESS"),
      CREDITCARDNO,TRANSCTIONTYPE),AMT=sum(AMOUNT)),
  TRANSCTIONTYPE,AMT)
write.xlsx(as.data.frame(result),"summ2.xlsx",sheetName = "Summary",col.names = T)