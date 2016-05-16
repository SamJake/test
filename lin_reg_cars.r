speed <- cars$speed
dist <- cars$dist

#predicting braking distance for a speed for 40mph in feet
t <- data.frame(speed=40)
r <- lm(dist~speed)

summary(r)
predict(r,t)

#predicting braking distance for a speed for 12.5mph in feet
t2 <- data.frame(speed=12.5)
predict(r,t2)


plot(dist,speed,abline(lm(speed~dist)),main="Speed vs Braking distance",cex=1.1,pch=16,col="red")