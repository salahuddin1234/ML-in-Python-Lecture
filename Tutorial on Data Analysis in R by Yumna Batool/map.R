#Using GGPLOT, plot the Base World Map

library(ggmap)
library(maps)

visited <- c("Karachi", "Lahore", "Islamabad", "Melbourne","Dhaka")
ll.visited <- geocode(visited)
visit.x <- ll.visited$lon
visit.y <- ll.visited$lat
mp <- NULL
mapWorld <- borders("world", colour="gray50", fill="gray50") # create a layer of borders

library(ggplot2)
mp <- ggplot() +   mapWorld
#Now Layer the cities on top
mp+ geom_point(aes(x=visit.x, y=visit.y) ,color="blue", size=3) 

library(RJSONIO)
library(jsonlite)
url <- "http://api.census.gov/data/2010/sf1?key=d6622f46c9dfb7184a6c988673952bdc9711f06b&get=NAME&for=state:*"
data <- readLines(url)
arr <- fromJSON(data)
visited <- arr[,1]
ll.visited <- geocode(visited)
visit.x <- ll.visited$lon
visit.y <- ll.visited$lat

mp <- NULL
mapWorld <- borders("world", colour="gray50", fill="gray50") # create a layer of borders

library(ggplot2)
mp <- ggplot() +   mapWorld
#Now Layer the cities on top
mp+ geom_point(aes(x=visit.x, y=visit.y) ,color="red", size=3) 

