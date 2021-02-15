# Usign Mtcars dataset

barplot(mtcars$cyl) # Does not work

# It needs a table with frequencies for each category
cylinders <- table(mtcars$cyl) # Create table
barplot(cylinders) # Bar chart
plot(cylinders) # Line chart (default)
