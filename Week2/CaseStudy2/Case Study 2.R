
library(tidyverse)
urlfile = "https://github.com/WJC-Data-Science/DTS350/raw/master/coral.csv"
mydata <- read_csv(url(urlfile))

mydata

#Australasia
ggplot(data = filter(mydata, Entity == "Australasia"), mapping= aes(x = Year, y = Value)) + 
  geom_bar(mapping = aes(fill = Event), stat = "identity") + 
  scale_fill_manual("legend", values = c("Moderate bleaching events (1-30% bleached)" = "blue", "Severe bleaching events (>30% bleached)" = "red"))

#Indian Ocean/Middle East
ggplot(data = filter(mydata, Entity == "Indian Ocean/Middle East"), mapping= aes(x = Year, y = Value)) + 
  geom_bar(mapping = aes(fill = Event), stat = "identity") + 
  scale_fill_manual("legend", values = c("Moderate bleaching events (1-30% bleached)" = "blue", "Severe bleaching events (>30% bleached)" = "red"))

#Pacific
ggplot(data = filter(mydata, Entity == "Pacific"), mapping= aes(x = Year, y = Value)) + 
  geom_bar(mapping = aes(fill = Event), stat = "identity") + 
  scale_fill_manual("legend", values = c("Moderate bleaching events (1-30% bleached)" = "blue", "Severe bleaching events (>30% bleached)" = "red"))

#West Atlantic
ggplot(data = filter(mydata, Entity == "West Atlantic"), mapping= aes(x = Year, y = Value)) + 
  geom_bar(mapping = aes(fill = Event), stat = "identity") + 
  scale_fill_manual("legend", values = c("Moderate bleaching events (1-30% bleached)" = "blue", "Severe bleaching events (>30% bleached)" = "red"))

#World
ggplot(data = filter(mydata, Entity == "World"), mapping= aes(x = Year, y = Value)) + 
  geom_bar(mapping = aes(fill = Event), stat = "identity") + 
  scale_fill_manual("legend", values = c("Moderate bleaching events (1-30% bleached)" = "blue", "Severe bleaching events (>30% bleached)" = "red"))

#Facet wrap of all 5
ggplot(data = mydata, mapping= aes(x = Year, y = Value)) + 
  geom_bar(mapping = aes(fill = Event), stat = "identity") +
  facet_wrap(~ Entity, nrow = 3) + 
  scale_fill_manual("legend", values = c("Moderate bleaching events (1-30% bleached)" = "blue", "Severe bleaching events (>30% bleached)" = "red"))


#My visualization 
ggplot(data = filter(mydata, Entity != "World"), mapping = aes(x = Entity, y = Value, fill = Event)) +
  geom_bar(stat = "identity") +
  theme(text = element_text(size = 7.3))


#The data from the visualizations does suggest that bleaching is becoming the 
#most frequent. In all 5 of of the visualizations, the 2016 bar is among 
#the tallest in the graph. In the "World" Visualization, their was an increasing
#trend in the last 3 years. 2016 was the second largest year when it came to
#cloral bleachings


#My visualization shows the all time contributions between each of the regions.
#The West Atlantic trumps all of the other regions by a significant margin. It
#also shows to be the only region with more moderate bleaching events than
#severe bleaching events.
