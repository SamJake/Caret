set.seed(100)
model_mars <- train(Purchase ~ . , data=train, method="earth")
fitted <- predict(model_mars)
plot(model_mars)
varimp_mars <- varImp(model_mars)
plot(varimp_mars)