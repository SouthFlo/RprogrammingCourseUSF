library(ggplot2)
library(lattice)
library(dplyr)

str(longley)
# Importing Data
longley <- read.csv("longley.csv")

# Visualization using basic plotting
plot(longley$price, type = "o", color = "blue") %>%
  title(main="Price", col.main="blue", font.main=4)
  
  
 # Visualization using ggplot
employment_vs_price <- lm(
  price ~ employment * armedforces,
  longley
)
ggplot(
  longley,
  aes(employment, armedforces, color = price)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)
  scale_color_viridis_c(option = "plasma")

## Visualization using lattice
employment_vs_price <- lm(
  price ~ employment * gnp,
  longley
)
ggplot(
  longley,
  aes(employment, gnp, color = price)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)
  scale_color_viridis_c(option = "plasma")
