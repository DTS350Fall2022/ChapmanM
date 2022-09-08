library("tibble")
data("iris")
class(iris)

iris_data <- as_data_frame(iris)
class(iris_data)
iris_data
remove(iris)

arrange(iris_data, Sepal.Length)

testda <- select(iris_data, Species, Petal.Width)
testda
testdat <- as.data.frame(testda)
testdat

species_mean <- group_by(iris_data, Species)
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

