skm <- skimr::skim_to_wide(train)
skm[,c(1:5,9:11,13,15,16)]

preProcess_missingdata_model <- preProcess(train,method = "knnImpute")
preProcess_missingdata_model

train <- predict(preProcess_missingdata_model,newdata = train)

skm2 <- skimr::skim_to_wide(train)
skm2[,c(1:5,9:11,13,15,16)]
skm2[,c(1,2,16)]

dummy_model <- dummyVars(Purchase ~ . , data = train)
train_mat <- predict(dummy_model, newdata = train)
train <- data.frame(train_mat)

preProcess_range_model <- preProcess(train,method = "range")
train <- predict(preProcess_range_model,newdata = train)
train$Purchase <- y
apply(train[,1:10],2,FUN = function(x){c('min'<-min(x),'max'<-max(x))})
