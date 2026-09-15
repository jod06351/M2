housing_data <- read.csv("C:/Users/USER/Downloads/Housing.csv")
library(ggplot2)

ggplot(housing_data, aes(x = price, y = bedrooms)) +
  geom_point(alpha = 0.7) +
  labs(title = "가격 vs 침실",
       x = "가격 (price)",
       y = "침실 개수 (bedrooms)") +
  theme_minimal()

model <- lm(price ~ bedrooms, data = housing_data)
summary(model)

residuals(model)
