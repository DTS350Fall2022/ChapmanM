library("tibble")
data("iris")
class(iris)

iris_data <- as_data_frame(iris)
class(iris_data)
iris_data

arrange(iris_data, Sepal.Length)

testdat <- select(iris, Species, Petal.Width)
testdat


species_mean <- group_by(iris, Species)
species_mean <- summarise(species_mean, Petal.Length = mean(Petal.Length, na.rm = TRUE), Petal.Width = mean(Petal.Width, na.rm = TRUE), Sepal.Length = mean(Sepal.Length, na.rm = TRUE), Sepal.Width = mean(Sepal.Width, na.rm = TRUE))
species_mean


iris_min <- filter(iris_data, Sepal.Width >= 3, Petal.Width != 2.5)
iris_min



iris_size <- 
  mutate(iris_data, Sepal.Size= case_when(
    Sepal.Length < 5 ~ "small",
    Sepal.Length >= 5 & Sepal.Length <6.5 ~ "medium",
    Sepal.Length >= 6.5 ~ "large"
  )
  )
iris_size


iris_rank <-
  mutate(iris_data, ranking = max_rank(Petal.Length))
iris_rank


iris3 <- iris %>%
  group_by(Species) %>%
  summarise_all(list(mean, sd))
iris3


