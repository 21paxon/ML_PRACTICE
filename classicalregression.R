install.packages("tidyverse")
install.packages("broom")
library(tidyverse)
library(broom)
df <- mtcars
#data expralatory#dimension
dim(df)
head(df)
str(df)
head(df,n=5) #read only 20 first cars
#model:mpg=w0+w1+wt linearregression model
simple_model <- lm(mpg ~ wt, data = df)
simple_model
summary(simple_model)
#model :w0+w1+w2+hp (now weight and horsepower togetjher ) for multiple linear regression
multi_model <- lm(mpg ~ wt+hp+disp, data = df)
multi_model
summary(multi_model)
plot(simple_model)
plot(multi_model)
# Predict fuel efficiency using horsepower
hp_model <- lm(mpg ~ hp, data = mtcars)
hp_model
summary(hp_model)

plot(mpg ~ hp, data = mtcars,
     main = "Horsepower vs Fuel Efficiency",
     xlab = "Horsepower",
     ylab = "Miles per Gallon")

abline(hp_model, col = "red", lwd = 2)

multiple_model <- lm(mpg ~ hp + wt, data = mtcars)
summary(multiple_model)
