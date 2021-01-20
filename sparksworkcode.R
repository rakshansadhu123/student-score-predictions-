library(caTools)
library(ggplot2)
data <- read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
data
set.seed(123)
split <- sample.split(data, SplitRatio = 0.8)
training_set <- subset(data, split == TRUE)
test_set <- subset(data, split== FALSE)
regressor <- lm(formula = Scores ~ Hours, data = training_set)
summary(regressor)

y_pred <- predict(regressor, newdata = test_set)
y_pred
training_set
test_set
ggplot() +
  geom_point(aes(x=training_set$Hours, y = training_set$Scores),
             color= "red")+
                geom_line(aes(x= training_set$Hours , y=predict(regressor, newdata = training_set)),
                          color="blue")+
xlab("hours")+
ylab("score")
regressor

predictionss <- 10.2119*9.25 + -0.3332
predictionss
