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

iris.s <- scale(iris[,-5])
iris.k <- kmeans(iris.s,3, nstart = 25)
iris.k$cluster

fviz_cluster