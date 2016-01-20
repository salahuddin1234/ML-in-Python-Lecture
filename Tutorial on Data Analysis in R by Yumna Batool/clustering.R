m <- data.frame(num = 1:50, count = sample(c(100:200),50))

# Determine number of clusters
wss <- (nrow(m)-1)*sum(apply(m,2,var))
for (i in 2:15) wss[i] <- sum(kmeans(m, 
                                     centers=i)$withinss)
plot(1:15, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")

# K-Means Cluster Analysis
fit <- kmeans(m, 6)
library(cluster) 
clusplot(m, fit$cluster, color=TRUE, shade=TRUE, 
         labels=2, lines=0)
library(fpc)
plotcluster(m, fit$cluster)

# Hierarchical Clustering
d <- dist(m, method = "euclidean") # distance matrix
fit <- hclust(d, method="ward.D") 
plot(fit) # display dendogram

groups <- cutree(fit, k=6) # cut tree into 5 clusters
# dendogram
rect.hclust(fit, k=6, border="red")
