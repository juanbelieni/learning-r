# Using Mtcars dataset

library("dplyr")

# Selecting columns
cars <- mtcars[, c(1:4, 6:7, 9:11)] # Skipping 5th and 8th column
head(cars)

# Computing and plotting clusters
hc <- cars %>%
      dist %>%
      hclust
plot(hc)

# Adding boxes to plot
rect.hclust(hc, k = 2, border = "gray")
rect.hclust(hc, k = 3, border = "blue")
rect.hclust(hc, k = 4, border = "green4")
rect.hclust(hc, k = 5, border = "darkred")
