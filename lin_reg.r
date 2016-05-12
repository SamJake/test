#Probability of passing an exam vs # of hours spent in studying
#Linear regression
#Actually an example for logical regression
help(seq)
h <- seq(0,12,by=0.5)
p <- c(0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,1,1,1,1,1,1,1,1,1,1)
pass <- data.frame(h,p)
r <- lm(p~h)
a <- data.frame(h=2.75)
predict(r,a)
a <- data.frame(h=c(2.75,3.75,6.2,4.1))
predict(r,a)
