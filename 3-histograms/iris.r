# Usign Iris dataset

hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

# Histogram by group
par(mfrow = c(3, 1)) # Put graphs in 3 rows and 1 column
hist(iris$Petal.Width[iris$Species == "setosa"],
  xlim = c(0, 3),
  breaks = 9,
  main = "Petal Width for Setosa",
  xlab = "",
  col = "red"
)
hist(iris$Petal.Width[iris$Species == "versicolor"],
  xlim = c(0, 3),
  breaks = 9,
  main = "Petal Width for Versicolor",
  xlab = "",
  col = "purple"
)
hist(iris$Petal.Width[iris$Species == "virginica"],
  xlim = c(0, 3),
  breaks = 9,
  main = "Petal Width for Virginica",
  xlab = "",
  col = "blue"
)
par(mfrow = c(1, 1)) # Restore graphic parameter
