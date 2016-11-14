# install.packages("RMySQL")
library(RMySQL)
mydb= dbConnect(MySQL(),user="root",password="root",dbname="sakila",host="localhost")
dbListTables(mydb)
rs <- dbSendQuery(mydb,"select * from actor")
rows <- fetch(rs,n=-1)

rs <- dbSendQuery(mydb,"select * from payment")
rows <- fetch(rs,n=-1)