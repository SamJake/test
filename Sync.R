#install.packages("ggplot2")
#library(ggplot2)


#install.packages("reshape")
#library(reshape)


mat <- matrix(0,10,10)

fill_matrix <- function(m)
{
c_x <- dim(m)[[1]]/2
c_y <- dim(m)[[2]]/2
r <- dim(m)[[1]]/10

for(i in 1:dim(m)[[1]])
{
	for(j in 1:dim(m)[[2]])
	{
	#0 white
	#1 yellow
	#2 black
	if(((i-c_x)*(i-c_x) + (j-c_y)*(j-c_y)) <= r*r)
		m[i,j] <-2
	}
}
return(m)
}



mat <- fill_matrix(mat)


df <- data.frame(mat)

ser <- 1:dim(mat)[[1]]
df1 <- cbind(ser,df)


df_new <- melt(df1,id=ser)