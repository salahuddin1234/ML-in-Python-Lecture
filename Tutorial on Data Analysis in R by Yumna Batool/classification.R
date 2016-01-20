#party
library(party)
fit1 <- ctree(Sepal.Length ~ ., data = iris)
plot(fit1, main="")

#rpart
library(rpart)
fit2 <- rpart(Kyphosis ~ Age  + Number + Start,
             method="class", data=kyphosis)

library(rattle)
fancyRpartPlot(fit2)
fancyRpartPlot(fit2, palettes=c("Greys", "Oranges"))


# Random Forest 
library(randomForest)
fit <- randomForest(Kyphosis ~ Age + Number + Start,   data=kyphosis)
print(fit) # view results 
importance(fit) # importance of each predictor
