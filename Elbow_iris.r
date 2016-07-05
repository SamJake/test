install.packages("devtools")
install.packages("factoextra")
install.packages("cluster")
install.packages("NbClust")

library(devtools)
library(factoextra)
library(cluster)
library(NbClust)

data(iris)
head(iris)

set.seed(123)
iris.s <- scale(iris[,-5])
iris.k <- kmeans(iris.s,5, nstart = 25)
iris.k$cluster

fviz_cluster(iris.k, data=iris.s, geom="point", stand=FALSE, frame.type="norm")


k.max <- 12
dat <- iris.s
wss <- sapply(1:k.max,
              function(k){kmeans(dat,k,nstart=10)$tot.withinss})
plot(1:k.max,wss,type="b", pch=19, frame=FALSE,
     xlab="Number of clusters K",
     ylab="Total within-clusters sum of squares")
abline(v=3, lty=2)