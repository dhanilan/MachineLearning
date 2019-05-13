library(rpart)
library(rpart.plot)
heart = read.csv('heart.csv')
heart$heart.disease = factor(heart$heart.disease)
tree = rpart(heart.disease~., data=heart)
prp(tree)

