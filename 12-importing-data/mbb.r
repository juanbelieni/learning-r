# Using MBB dataset

library("rio")

# CSV
mbb_csv <- import("./12-importing-data/mbb.csv")
head(mbb_csv)

# TXT
mbb_txt <- import("./12-importing-data/mbb.txt")
head(mbb_txt)

# XLSX
mbb_xlsx <- import("./12-importing-data/mbb.xlsx")
head(mbb_xlsx)

# Example
library("ggplot2")
library("zoo")
theme_set(theme_minimal() +
  theme(
    text = element_text(size = 16),
    axis.title.y = element_text(margin = margin(t = 0, r = 20, b = 0, l = 20)),
    axis.title.x = element_text(margin = margin(t = 20, r = 0, b = 20, l = 0))
  ))

p <- ggplot(mbb, aes(x = as.yearmon(Month))) +
  geom_line(aes(y = Beethoven, color = "darkred")) +
  geom_line(aes(y = Bach, color = "steelblue")) +
  geom_line(aes(y = Mozart, color = "darkgreen")) +
  scale_y_continuous(trans = "log10") +
  scale_color_manual(
    labels = c("Beethoven", "Bach", "Mozart"),
    values = c("darkred", "steelblue", "darkgreen")
  ) +
  labs(x = "Date", y = "Popularity", color = "Composers")

print(p)