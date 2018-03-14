set.seed(123)
trainRow <- createDataPartition(orange$Purchase, p=0.8, list=FALSE)
train <- orange[trainRow,]
test <- orange[-trainRow,]
x <- train[,2:18]
y <- train$Purchase
