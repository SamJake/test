install.packages("ggplot2")
library(ggplot2)
library(nlme)

gold_usd <- read.csv("J:/R/work/Gold_usd.csv")
str(gold_usd)
gold_usd$Time <- as.Date(gold_usd$Time,format="%Y-%m-%d")
str(gold_usd)

gold_usd <- groupedData(formula = Money ~ Time | Currency, data=gold_usd)
str(gold_usd)

g1 <- ggplot(gold_usd,aes(x=Time,y=Money,group=Currency,color=Currency)) + geom_line() + geom_point() + xlab("Time: 1969 - 2016") + ylab("Gold price in USD") + ggtitle("Gold price curve in USD over the years")
g1

g2 <- g1 + geom_smooth()
g2

gold <- read.csv("J:/R/work/Gold.csv")
head(gold)
tail(gold)


str(gold)

gold$Time <- as.Date(gold$Time,format="%Y-%m-%d")
str(gold)
head(gold)


gold <- groupedData(formula= Money ~ Time | Currency, data=gold)

str(gold)

h1 <- ggplot(gold,aes(x=Time,y=Money,group=Currency,color=Currency)) + geom_point(aes(size=Currency)) + xlab("Time 2014 - 2016") + ylab("Gold price in USD; Euro & Pound") + ggtitle("Gold price curve in different currencies")
h1

h2 <- ggplot(gold,aes(x=Time,y=Money,group=Currency,color=Currency)) + geom_line(size = 1) + xlab("Time 2014 - 2016") + ylab("Gold price in USD; Euro & Pound") + ggtitle("Gold price curve in different currencies")
h2


h3 <- h2 + geom_point(aes(size=Currency))
h3


h4 <- h2 + geom_smooth(alpha=0.3, size=0.5)
h4






gold2 <- read.csv("J:/R/work/gold2.csv")
str(gold2)
head(gold2)
tail(gold2)

gold2$Time <- as.Date(gold2$Time,format="%Y-%m-%d")
str(gold2)
class(gold2)

gold2 <- groupedData(formula=Money ~ Time | Currency, data=gold2)
str(gold2)
class(gold2)

i1 <- ggplot(gold2,aes(x=Time,y=Money,group=Currency,color=Currency)) + geom_line(size=1) + geom_smooth(alpha=0.3) + xlab("Time: 2010 - 2016") + ylab("Gold price in USD; Euro & Pound") + ggtitle("Fitted Gold price curve")

i1







gold3 <- read.csv("J:/R/work/gold3.csv")
str(gold3)
head(gold3)
tail(gold3)

gold3$Time <- as.Date(gold3$Time, format="%Y-%m-%d")
gold3<- groupedData(formula=Money ~ Time | Currency, data=gold3)


j1 <- ggplot(gold3,aes(x=Time,y=Money,group=Currency,color=Currency)) + geom_line(size=1) + geom_smooth(alpha=0.3) + xlab("Time: 2006 - 2016") + ylab("Gold price in USD") + ggtitle("Fitted Gold price curve")
j1

scale_colour_gradient2

