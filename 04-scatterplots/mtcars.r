# Usign Mtcars dataset

# Basic X-Y plot for two quantitative variables
plot(mtcars$wt, mtcars$mpg,
  pch = 19, # Solid circle
  cex = 1.5, # Make 150% size
  col = "#cc0000",
  main = "MPG as a function of Weight of Cars",
  xlab = "Wight (in 1000 pounds)",
  ylab = "MPG"
)
