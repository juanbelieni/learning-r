# Using Iris dataset

# All data
hist(iris$Petal.Length)
summary(iris$Petal.Length)
summary(iris$Species)

# Selecting by category
hist(iris$Petal.Length[iris$Species == "versicolor"],
  main = "Petal Length: Versicolor"
)
hist(iris$Petal.Length[iris$Species == "virginica"],
  main = "Petal Length: Virginica"
)
hist(iris$Petal.Length[iris$Species == "setosa"],
  main = "Petal Length: Setosa"
)

# Selecting by value
hist(iris$Petal.Length[iris$Petal.Length < 2],
  main = "Petal Length < 2"
)

# Multiple selectors
hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5],
  main = "Petal Length: Short Virginica"
)

# Creating subsample
setosa <- iris[iris$Species == "setosa", ]
head(setosa)
summary(setosa$Petal.Length)
hist(setosa$Petal.Length)
