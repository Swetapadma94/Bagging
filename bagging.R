library(ipred)
set.seed(300)
mybag <- bagging(iris$Species ~ ., data = iris, nbagg = 25)
summary(mybag)
pred <- predict(mybag, iris)
table(pred, iris$Species)
plot(pred)
