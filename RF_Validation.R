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
  library("caret")
}

lib()
Sens_Spec <- function(pred){
  prf <- performance(pred, 'sens', 'spec')
  sens = data.frame(prf@x.values)
  spec = data.frame(prf@y.values)
  threshold = data.frame(prf@alpha.values)
  max_youden = 0
  max_sens = 0
  max_spec = 0
  max_index = 0
  for (i in 1:nrow(sens)) {
    if (sens[i, 1] + spec[i, 1] > max_youden) {
      max_youden = sens[i, 1] + spec[i, 1]
      max_sens = sens[i, 1]
      max_spec = spec[i, 1]
      max_index = i
    }
  }
  
  data_frame <- data.frame(max_sens,max_spec,threshold[max_index,1])
  return(data_frame)
}

### Stop phase
data <- read.csv("G:/DrivingStyle/Stop-Go-Event/Buick/output/229727_stop_and_go_statData.csv")
driverId <-as.factor( data[,c(1)])
datanames <- colnames(data)
# stop phase statistic feature
Name_Stop <- grep("stop$",datanames,value=T)
Stopstats <- cbind(driverId ,data[,Name_Stop])
#waiting
Name_Stop <- grep("brakePedal.*waiting$",datanames,value=T)
Stopstats  <- cbind(driverId ,data[,Name_Stop])
#go
Name_Go <- grep("go$",datanames,value=T)
Gostats <- cbind(driverId ,data[,Name_Go])
Stopstats <- Gostats[,-c(7,8,9,39,40,41)]

#all
# stop phase statistic feature
Name_Stop <- grep("stop$",datanames,value=T)
Stopstats <- cbind(driverId ,data[,Name_Stop])
#Stopstats <- subset(Stopstats, select = -c(engineRateSkewstop ,engineRateKurtosisstop ,brakePedalKurtosisstop,brakeRateMinstop,brakeRateAbsMeanstop))

# waiting phase statistic feature
Name_Waiting <- grep("brakePedal.*waiting$",datanames,value=T)
Waitingstats <- cbind(driverId ,data[,Name_Waiting])
#Waitingstats <- Waitingstats[,-c(14,6)]

#go phase statistic feature
Name_Go <- grep("go$",datanames,value=T)
Gostats <- cbind(driverId ,data[,Name_Go])
Gostats <- Gostats[,-c(7,8,9,39,40,41)]

# All statistic feature
Allstats <- cbind(Stopstats,Waitingstats[,-c(1)])
Stopstats <- cbind(Allstats,Gostats[,-c(1)])
#Stopstats <- subset(Stopstats, select = -c(engineRateSkewstop ,engineRateKurtosisstop ,brakePedalKurtosisstop))
folds<-createFolds(y=Stopstats$driverId,k=10) 
threshold <- NULL
AUC<-{}  
for(i in 1:10){  
  Train_Stopstats<-Stopstats[-folds[[i]],]  
  Test_Stopstats<-Stopstats[folds[[i]],]  
  Stop_RF <- randomForest(driverId~., data = Train_Stopstats, importance =T , mtry = 5, ntree =1000,tree.err =T)
  # delect label's test data
  Test_Stopstats1 <- subset(Test_Stopstats, select = -c(driverId))
  #stop phase
  PreStop <-predict(Stop_RF,newdata=Test_Stopstats1,type="prob")
  pred0=prediction(PreStop[,c(2)],Test_Stopstats$driverId)
  
  
  # AUC calculation
  (AUC0=unlist(performance(pred0,"auc")@y.values))
  AUC = c(AUC,AUC0)
  
  
  
  threshold1 <-  Sens_Spec(pred0)[1,3]
  
  threshold <- cbind(threshold,threshold1)
  
}  
print(AUC)
mean(AUC)  
mean_threshold <- mean(threshold)
mean_threshold


### Waiting phase
data <- read.csv("G:/DrivingStyle/Stop-Go-Event/Buick-I/output/229728_stop_and_go_statData.csv")
driverId <-as.factor( data[,c(1)])
datanames <- colnames(data)
# waiting phase statistic feature
Name_Waiting <- grep("brakePedal.*waiting$",datanames,value=T)
Waitingstats <- cbind(driverId ,data[,Name_Waiting])
#Waitingstats <- Waitingstats[,-c(23:25)]

# stop phase statistic feature
Name_Stop <- grep("stop$",datanames,value=T)
Waitingstats <- cbind(driverId ,data[,Name_Stop])

#go
Name_Go <- grep("go$",datanames,value=T)
Gostats <- cbind(driverId ,data[,Name_Go])
Waitingstats <- Gostats[,-c(7,8,9,39,40,41)]

#all

# stop phase statistic feature
Name_Stop <- grep("stop$",datanames,value=T)
Stopstats <- cbind(driverId ,data[,Name_Stop])
#Stopstats <- subset(Stopstats, select = -c(engineRateSkewstop ,engineRateKurtosisstop ,brakePedalKurtosisstop,brakeRateMinstop,brakeRateAbsMeanstop))

# waiting phase statistic feature
Name_Waiting <- grep("brakePedal.*waiting$",datanames,value=T)
Waitingstats <- cbind(driverId ,data[,Name_Waiting])
#Waitingstats <- Waitingstats[,-c(14,6)]

#go phase statistic feature
Name_Go <- grep("go$",datanames,value=T)
Gostats <- cbind(driverId ,data[,Name_Go])
Gostats <- Gostats[,-c(7,8,9,39,40,41)]

# All statistic feature
Allstats <- cbind(Stopstats,Waitingstats[,-c(1)])
Waitingstats <- cbind(Allstats,Gostats[,-c(1)])

# 10 folds
folds<-createFolds(y=Waitingstats$driverId,k=10) 
AUC<-{} 
for(i in 1:10){  
  Train_Stopstats<-Waitingstats[-folds[[i]],]  
  Test_Stopstats<-Waitingstats[folds[[i]],]  
  Stop_RF <- randomForest(driverId~., data = Train_Stopstats, importance =T , mtry = 5, ntree =1000,tree.err =T)
  # delect label's test data
  Test_Stopstats1 <- subset(Test_Stopstats, select = -c(driverId))
  #stop phase
  PreStop <-predict(Stop_RF,newdata=Test_Stopstats1,type="prob")
  pred0=prediction(PreStop[,c(2)],Test_Stopstats$driverId)
  # AUC calculation
  (AUC0=unlist(performance(pred0,"auc")@y.values))
  AUC = c(AUC,AUC0)
}  
print(AUC)
mean(AUC)


### Go phase
data <- read.csv("G:/DrivingStyle/Stop-Go-Event/Cruze/output/229730_stop_and_go_statData.csv")
driverId <-as.factor( data[,c(1)])
datanames <- colnames(data)
#go phase statistic feature
Name_Go <- grep("go$",datanames,value=T)
Gostats <- cbind(driverId ,data[,Name_Go])
Gostats <- Gostats[,-c(7,8,9,39,40,41)]

# stop phase statistic feature
Name_Stop <- grep("stop$",datanames,value=T)
Gostats <- cbind(driverId ,data[,Name_Stop])

#waiting
Name_Stop <- grep("brakePedal.*waiting$",datanames,value=T)
Gostats  <- cbind(driverId ,data[,Name_Stop])


#all
# stop phase statistic feature
Name_Stop <- grep("stop$",datanames,value=T)
Stopstats <- cbind(driverId ,data[,Name_Stop])
#Stopstats <- subset(Stopstats, select = -c(engineRateSkewstop ,engineRateKurtosisstop ,brakePedalKurtosisstop,brakeRateMinstop,brakeRateAbsMeanstop))

# waiting phase statistic feature
Name_Waiting <- grep("brakePedal.*waiting$",datanames,value=T)
Waitingstats <- cbind(driverId ,data[,Name_Waiting])
#Waitingstats <- Waitingstats[,-c(14,6)]

#go phase statistic feature
Name_Go <- grep("go$",datanames,value=T)
Gostats <- cbind(driverId ,data[,Name_Go])
Gostats <- Gostats[,-c(7,8,9,39,40,41)]

# All statistic feature
Allstats <- cbind(Stopstats,Waitingstats[,-c(1)])
Gostats <- cbind(Allstats,Gostats[,-c(1)])


#10-folds
folds<-createFolds(y=Gostats$driverId,k=10) 
AUC = {}
for(i in 1:10){  
  Train_Stopstats<-Gostats[-folds[[i]],]  
  Test_Stopstats<-Gostats[folds[[i]],]  
  Stop_RF <- randomForest(driverId~., data = Train_Stopstats, importance =T , mtry = 5, ntree =1000,tree.err =T)
  # delect label's test data
  Test_Stopstats1 <- subset(Test_Stopstats, select = -c(driverId))
  #stop phase
  PreStop <-predict(Stop_RF,newdata=Test_Stopstats1,type="prob")
  pred0=prediction(PreStop[,c(2)],Test_Stopstats$driverId)
  # AUC calculation
  (AUC0=unlist(performance(pred0,"auc")@y.values))
  AUC = c(AUC,AUC0)
}  
print(AUC)
mean(AUC)


###plot Distribution histogram
dataplot <- data.frame(AUC= c(0.864,0.848,0.899), Phase = c("Stop","Waiting","Go"))
ggplot(dataplot, aes(x = Phase, y = AUC)) +
  geom_bar(stat="identity", fill="lightblue", colour="black")+
  labs(title = "AUC")+
  labs(title = "Stop:0.864   Waiting:0.848   Go:0.899")+
  theme(plot.title = element_text(hjust = 0.5))









