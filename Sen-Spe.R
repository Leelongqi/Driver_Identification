lib=function(){
  library(plyr)
  library(gridExtra)
  library(e1071)
  library(ggplot2)
  library(randomForest)
  library(ggRandomForests)
  library(ROCR)
  library(caret)
  library(fitdistrplus)
}
lib()
Sens_Spec <- function(pred){
  prf <- performance(pred, 'sens', 'spec')
  sens = data.frame(prf@x.values)
  spec = data.frame(prf@y.values)
  max_youden = 0
  max_sens = 0
  max_spec = 0
  for (i in 1:nrow(sens)) {
    if (sens[i, 1] + spec[i, 1] > max_youden) {
      max_youden = sens[i, 1] + spec[i, 1]
      max_sens = sens[i, 1]
      max_spec = spec[i, 1]
    }
  }
  
  data_frame <- data.frame(max_sens,max_spec)
  return(data_frame)
}
Accuracy <- function(Result){
  accuracy <- (Result[1,1]+Result[2,2])/sum(Result)
  return(accuracy)
}

#data <- read.csv("G:/DrivingStyle/Stop-Go-Event/Buick/output/229727_stop_and_go_statData.csv")
data <- read.csv("G:/DrivingStyle/Stop-Go-Event/Buick-I/output/229728_stop_and_go_statData.csv")
#data <- read.csv("G:/DrivingStyle/Stop-Go-Event/Cruze/output/229730_stop_and_go_statData.csv")
#delect NULL value
data <- data.frame(t(na.omit(t(data))))
driverId <- as.factor(data$driverId)
datanames <- colnames(data)

# AS model
AS_name <- grep("accelX|speed*go|speed*stop",datanames,value=T)
AS_stats <- cbind(driverId,data[,AS_name])

#(AS + ES) model 
ES_name <- grep("engine*", datanames, value = T)
ASES_stats <- cbind(AS_stats,data[,ES_name])

# AS+BP model
BP_name <- grep("brake*", datanames, value = T)
ASBP_stats <- cbind(AS_stats,data[,BP_name])

# (AS+ ES +BP) model
All_name <- grep("brake*", datanames, value = T)
All_stats <- cbind(ASES_stats,data[,All_name])

Index1 <- sample(1:nrow(AS_stats),nrow(AS_stats)*0.2)
#Length_Index <- length(Index1)

#train data

Train_AS_stats <- AS_stats[-Index1,]
Train_ASES_stats <- ASES_stats[-Index1,]
Train_ASBP_stats <- ASBP_stats[-Index1,]
Train_All_stats <-  All_stats[-Index1,]
# test data

Test_AS_stats <- AS_stats[Index1,]
Test_ASES_stats <- ASES_stats[Index1,]
Test_ASBP_stats <- ASBP_stats[Index1,]
Test_All_stats  <-  All_stats[Index1,]
#building RF model

#SWG_RF <- randomForest(driverId~., data = Train_All_Features, importance =T , mtry = 8, ntree =1000,tree.err =T)

AS_RF <- randomForest(driverId~., data = Train_AS_stats, importance =T , mtry = 4, ntree =1000,tree.err =T)
ASES_RF <- randomForest(driverId~., data = Train_ASES_stats, importance =T , mtry = 6, ntree =1000,tree.err =T)
ASBP_RF <- randomForest(driverId~., data = Train_ASBP_stats, importance =T , mtry = 5, ntree =1000,tree.err =T)
ALL_RF <- randomForest(driverId~., data = Train_All_stats, importance =T , mtry = 8, ntree =1000,tree.err =T)

#predict
# AS
PreAS <- predict(AS_RF,newdata=subset(Test_AS_stats, select = -c(driverId)),type="prob" )
predAS <- prediction(PreAS[,c(2)],Test_AS_stats$driverId)
prf <- performance(predAS, 'sens', 'spec')
# calculate sensi-speci
Sens_Spec(predAS)

PreAS1 <- predict(AS_RF,newdata=subset(Test_AS_stats, select = -c(driverId)))
Result_AS <- table(actual=Test_AS_stats$driverId,predicted = PreAS1)
Result_AS
Accuracy(Result_AS)
#AS+ES
PreASES <- predict(ASES_RF,newdata=subset(Test_ASES_stats, select = -c(driverId)),type="prob" )
predASES=prediction(PreASES[,c(2)],Test_ASES_stats$driverId)

Sens_Spec(predASES)
# confusion matrix
PreASES1 <- predict(ASES_RF,newdata=subset(Test_ASES_stats, select = -c(driverId)))
Result_ASES <- table(actual=Test_ASES_stats$driverId,predicted=PreASES1)
Result_ASES
Accuracy(Result_ASES)


#AS+BP

PreASBP <- predict(ASBP_RF,newdata=subset(Test_ASBP_stats, select = -c(driverId)),type="prob" )
predASBP=prediction(PreASBP[,c(2)],Test_ASBP_stats$driverId)

Sens_Spec(predASBP)

PreASBP1 <- predict(ASBP_RF,newdata=subset(Test_ASBP_stats, select = -c(driverId)) )
Result_ASBP <- table(actual=Test_ASBP_stats$driverId,predicted=PreASBP1)
Result_ASBP
Accuracy(Result_ASBP)

# All

PreALL <- predict(ALL_RF,newdata=subset(Test_All_stats, select = -c(driverId)) ,type="prob")
predALL=prediction(PreALL[,c(2)],Test_All_stats$driverId)

Sens_Spec(predALL)

PreALL1 <- predict(ALL_RF,newdata=subset(Test_All_stats, select = -c(driverId)))
Result_ALL <- table(actual=Test_All_stats$driverId,predicted=PreALL1)
Result_ALL
Accuracy(Result_ALL)
#write Index1
dataIndex <- data.frame(Index1) 
write.csv(dataIndex,file = "G:/DrivingStyle/Stop-Go-Event/sens-specIndex.csv")
