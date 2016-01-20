#DATA
m <- matrix(nrow = 2, ncol = 3) 
arr <- array(1,10)
v <- c(c(1:10))
l <- list(1, "a", TRUE, 1 + 4i) 

x <- data.frame(num = 1:50, arg = sample(c("T","F"))) 


#DATA CONVERSION
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

#DATA MANUPLATION
x <- 1:3
y <- 10:12
cbind(x, y)
rbind(x, y) 
subset(m,m$num > 45)


apply(m, 2, mean)
apply(m, 1, mean)
sapply(1:3, function(x) x^2)
lapply(1:3, function(x) x^2)
unlist(lapply(1:3, function(x) x^2))
sapply(1:2, function(x) mean(m[,x]))
sapply(1:2, function(x, y) mean(y[,x]), y=m)

arg = data.frame(sample(c("T","F"),5,replace=TRUE))

library(DiscriMiner)
binarize(arg)

#correlation
library(corrplot)
M <- cor(mtcars)
corrplot(M)

