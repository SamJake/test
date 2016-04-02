#install.packages("ggplot2")
#library(ggplot2)


#install.packages("reshape")
#library(reshape)


mat <- matrix(0,10,10)

fill_matrix <- function(m)
{
c_x <- dim(m)[[1]]/2
c_y <- dim(m)[[2]]/2
r_inner <- dim(m)[[1]]/10.0
r_outer1 <- dim(m)[[1]]/2.0
r_outer2 <- dim(m)[[1]]/3.33


for(i in 1:dim(m)[[1]])
{
	for(j in 1:dim(m)[[2]])
	{
	#0 white
	#1 yellow
	#2 black
	if(((i-c_x)*(i-c_x) + (j-c_y)*(j-c_y)) <= r_inner*r_inner)
		m[i,j] <-2
	
	if(			(((i-c_x)*(i-c_x) + (j-c_y)*(j-c_y)) <= r_outer1*r_outer1)  && (((i-c_x)*(i-c_x) + (j-c_y)*(j-c_y)) >= r_outer2*r_outer2))
		m[i,j] <-1
	}
}
return(m)
}




mat <- fill_matrix(mat)


df <- data.frame(mat)

ser <- 1:dim(mat)[[1]]
df1 <- cbind(ser,df)


df_t <- melt(df1,id="ser")



transform_matrix <- function(m)
{

m1 <- matrix(dim(m)[[1]],1)

temp <- which(m[3] == 0)

for(i in 1:dim(m)[[1]])
{
	m1[i] <- as.integer(substr(m[i,2],2,nchar(as.character(m[i,2]))))
}

m[temp,3] = NA

m <- cbind(m,m1)

for(i in 1:dim(m)[[1]])
{
	if(!is.na(m[i,3])) m[i,3] <- m[i,4]
}

return(m)
}


abc <- ggplot(final_mat,aes(x=ser,y=value)) + geom_point(size=5, color="yellow") + scale_y_continuous(limits=c(1,100))
