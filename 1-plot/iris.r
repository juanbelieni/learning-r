# Usign Iris dataset

# Plot comand adapts to the number and the format of the data that it is passed
plot(iris$Species) # Categorical variable
plot(iris$Petal.Length) # Quantitative variable
plot(iris$Species, iris$Petal.Width) # Category x quantity
plot(iris$Petal.Length, iris$Petal.Width) # Quantitative pair
plot(iris) # Entire data frame

# Plot with options
plot(iris$Petal.Length, iris$Petal.Width,
  col = "#cc0000",
  pch = 19,
  main = "Iris: Petal Length x Petal Width",
  xlab = "Petal Length",
  ylab = "Petal Width"
)
