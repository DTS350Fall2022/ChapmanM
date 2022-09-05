ggplot(data = iris) + 
  geom_point(mapping = aes(x = Sepal.Length, y = Sepal.Width, color = Species, shape = Species))

ggplot(data = iris) + 
  geom_point(mapping = aes(x = Petal.Width, y = Petal.Length, color = Species, shape = Species)) +
  facet_wrap(~ Species, nrow = 1)


ggplot(data = iris, mapping = aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(mapping = aes(color = Species, shape = Species)) +
  geom_smooth(method = "lm")

ggplot(data = iris, mapping= aes(x=Sepal.Length)) + 
  geom_histogram(mapping = aes(fill = Species), color = "black",bins=18) +
  geom_vline(mapping = aes(xintercept = mean(Sepal.Length)), linetype = "dashed", color = "grey")


#Driving Question:
#Which species has the most unique (variety of sizing) petals?

#Answer:
#The third visualization, the scatter plot with a linear line, shows that 
#virginicas have the most outliers when it comes to peteal width and length.
#The other species stay much closer to the line.
