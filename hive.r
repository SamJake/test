Sys.setenv(HIVE_HOME='/usr/lib/hive')
Sys.setenv(HADOOP_HOME='/usr/lib/hadoop')

library(RHive)
rhive.init()
rhive.connect()

#copy data to a data frame
r=rhive.query('select * from aml_customerdetails')

nrow(r)