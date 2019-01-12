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

# rm(list=ls())

## update ..0.. ..00.. ..000.. into ..x.. ..xx.. ..xxx..
## update data by ?????????
updateData=function(data){
  for (i in 2:(length(data)-3)){
    if (data[i]==0 && data[i+1]==0 && data[i+2]==0 && data[i-1]>0 && data[i+3]>0){
      # x000x
      data[i]=(data[i-1]+data[i+3])/2;
      data[i+1]=data[i]
      data[i+2]=data[i]
    } 
    else if(data[i]==0 && data[i+1]==0 && data[i-1]>0 && data[i+2]>0){ 
      # x00xx
      data[i]=(data[i-1]+data[i+2])/2;
      data[i+1]=data[i]
    }  
    else if(data[i]>0 && data[i+1]==0 && data[i+2]==0 && data[i+3]>0){ 
      # xx00x
      data[i+1]=(data[i]+data[i+3])/2;
      data[i+2]=data[i+1]
    }  
    else if(data[i]==0 && data[i+1]>0 && data[i-1]>0) 
      # x0xxx
      data[i]=(data[i-1]+data[i+1])/2
    else if(data[i]>0 && data[i+1]==0 && data[i+2]>0) 
      # xx0xx
      data[i+1]=(data[i]+data[i+2])/2
    else if(data[i+1]>0 && data[i+2]==0 && data[i+3]>0) 
      # xxx0x
      data[i+2]=(data[i+1]+data[i+3])/2
  }
  data
}

## for stop and go event filter
countZeroSpeed=function(data){
  count=0
  for (i in 1:length(data)){
    if (data[i]==0) {count=count+1}
  }
  return(count)
}


###### add and clean: speed,brakePedal,accelX,engineSpeed
###### add and calculate: jerkX, brakeRate, accelXType, engineRate
addFeatures=function(data){
  
  n=nrow(data)
  
  ##data cleaning
  data$speed=data$FOT_Control.Speed
  data$speed[is.na(data$speed)]=0 # replace null values by 0
  data$speed=updateData(data$speed) # replace zero in ..0.. ..00.. ..000..
  
  data$brakePedal=data$VehicleCAN_1.BrakePedalPosition
  data$brakePedal[is.na(data$brakePedal)]=0 # replace null values by 0
  
  data$accelX=data$IMU.Accel_X
  data$accelX[is.na(data$accelX)]=0 # replace null values by 0
  data$accelX = updateData(data$accelX)
  
  data$engineSpeed=data$VehicleNetworkBox.EngineSpeed
  data$engineSpeed[is.na(data$engineSpeed)]=0 # replace null values by 0
  data$engineSpeed=updateData(data$engineSpeed) # replace zero in ..0.. ..00.. ..000..
  
  data$jerkX=0  # init
  if (n>1) {
    for(i in 2:n) {
      data$jerkX[i]=(data$accelX[i]-data$accelX[i-1])/0.1
    }
    data$jerkX[1]=data$jerkX[2]
  }
  
  data$brakeRate=0  # init
  if (n>1) {
    for(i in 2:n) {
      data$brakeRate[i]=(data$brakePedal[i]-data$brakePedal[i-1])/0.1
    }
    data$brakeRate[1]=data$brakeRate[2]
  }
  
  data$engineRate=0  # init
  if (n>1) {
    for(i in 2:n) {
      data$engineRate[i]=(data$engineSpeed[i]-data$engineSpeed[i-1])
    }
    data$engineRate[1]=data$engineRate[2]
  }
  
  data$accelXType="noValue"
  data$accelXType[which(data$accelX>0)]="accel"
  data$accelXType[which(data$accelX<0)]="deceleration"
  data$accelXType[which(data$accelX==0)]="zero"
  return(data)
}


#### detection condition:
#### 1) waiting duration Limit > 5s 
#### 1) stop Phase zero speed < 5 point
#### 1) go Phase zero speed < 5 point
detectEvent=function(durationLimit,beforeTime,afterTime,zeroLimit){
  filesName <- list.files(pattern = "csv")
  filesLength <- length(filesName)
  
  # for each trip file
  dataMeta=data.frame()
  eventId=0
  
  for(i in 1:filesLength){
    tripEventId=0
    driverId=as.numeric((unlist(strsplit(filesName[i], split = "_")))[2])
    carId=as.numeric((unlist(strsplit(filesName[i], split = "_")))[3])
    tripId=as.numeric(unlist(strsplit((unlist(strsplit(filesName[i], split = "_")))[7],split=".csv")[1]))
    data=read.csv(filesName[i]) # read csv
    
    data=data[,c("System.Time_Stamp","FOT_Control.Speed",
                 "IMU.Accel_X","IMU.Accel_Y","VehicleNetworkBox.EngineSpeed","VehicleCAN_1.BrakePedalPosition")] # select features
    
    data$carId=carId
    data$driverId=driverId
    data$tripId=tripId
    
    data=addFeatures(data)    
    
    ## detect events: stop-and-go 
    size=nrow(data)  # get row numbers
    count=0     
    
    ## for each record
    for (j in 1:size){
      if (data[j,"speed"]==0) { 
        if (count==0){
          beginTime=data[j,"System.Time_Stamp"]
        }
        count=count+1
      }
      else{ # if speed <> 0
        if (count>durationLimit & beginTime!=1) { # find the event, longer than 5s and not initial start and not final stop
          ### start...beginTime...endTime...stop
          endTime=data[j,"System.Time_Stamp"]
          
          if (beginTime-beforeTime<1) {
            start=1
          } 
          else{
            start=beginTime-beforeTime
          }  # record before 5 s of event
          if (endTime+afterTime>size) {
            stop=size
          } 
          else{
            stop=endTime+afterTime
          }  # record after 5 s of event
          
          
          cnt1=countZeroSpeed(data[start:beginTime,"speed"])
          
          cnt2=countZeroSpeed(data[endTime:stop,"speed"])
          # print(paste("cnt1:",cnt1,sep=""))
          # print(paste("cnt2:",cnt2,sep=""))
          # print(paste("timeStamp:",j,sep=""))
          # 
          if (cnt1<zeroLimit & cnt2<zeroLimit) { # before and after phase cannot include too much zero speed
            ## event detected!!
            eventId=eventId+1
            tripEventId=tripEventId+1
            duration=(endTime-beginTime)*0.1
            
            ## detect event, get data
            dataBefore=data[start:beginTime,]
            dataDuring=data[(beginTime+1):(endTime-1),]
            dataAfter=data[endTime:stop,]
            
            dataBefore$seq=c(1:nrow(dataBefore)) # add sequence
            dataDuring$seq=c(1:nrow(dataDuring)) # add sequence
            dataAfter$seq=c(1:nrow(dataAfter)) # add sequence
            
            ## before stop phase, waiting phase, after go phase
            dataBefore$eventPhase="stop"
            dataDuring$eventPhase="waiting"
            dataAfter$eventPhase="go"
            
            dataTemp=rbind(dataBefore,dataDuring,dataAfter)
            dataTemp$eventSeq=c(1:nrow(dataTemp)) # add sequence
            
            ## set eventId
            dataTemp$eventId=eventId
            dataTemp$tripEventId=tripEventId
            
            dataMeta=rbind(dataMeta,dataTemp)
          }
        }
        
        count=0
        
      }
      
    }
  }
  return(dataMeta) 
}

## calculate statistics
statImp=function(data,featureName,eventPhase){
  if (eventPhase!="ALL"){
    data=data[which(data$eventPhase==eventPhase),]
  }
  dataStat <- plyr::ddply(
    data,
    c("driverId","tripId","eventId"),
    plyr::summarise,
    AbsMean=mean(abs(value)),
    Mean=mean(value),
    SD=sd(value),
    Min=min(value),
    Max=max(value),
    Skew=skewness(value),
    Kurtosis=kurtosis(value),
    CV=sd(value)/mean(abs(value)))
  
    n=length(colnames(dataStat))
    colnames(dataStat)[c(4:n)]=paste(featureName,colnames(dataStat)[c(4:n)],eventPhase,sep="")
  
  return(dataStat)        
}

### calculate statistics of features
### bySpeed: YES or NO
statSingleFeature=function(data,featureName,byPhase){
  
  data$value=data[which(colnames(data)==featureName)][,1]
  
  if (byPhase=="YES"){
    dataStat1=statImp(data,featureName,"stop")
    dataStat2=statImp(data,featureName,"waiting")
    dataStat3=statImp(data,featureName,"go")
    if (nrow(dataStat2)!=0){
      dataStat1=merge(dataStat1,dataStat2,all=TRUE)  
    } 
    if (nrow(dataStat3)!=0){
      dataStat1=merge(dataStat1,dataStat3,all=TRUE)  
    }
  }else{
    dataStat1=statImp(data,featureName,"ALL")
  }
  return(dataStat1)
}

### data,features,byPhase: YES/NO
statFeatures=function(data,features,byPhase){
  n=length(features)
  dataStat=statSingleFeature(data,features[1],byPhase)
  
  if (n>1) {
    for (i in 2:n){
      dataStat1=statSingleFeature(data,features[i],byPhase)
      dataStat=merge(dataStat,dataStat1,all=TRUE)
    }
  } 
  return(dataStat)
}

### data,fileName,featureName,stats,byPhase
plotSingleFeature=function(data,fileName,featureName,stats,byPhase){
  n=length(stats)
  k=1
  colNames=c()
  for (i in 1:n){
    if (byPhase=="YES") {
      colNames[k]=paste(featureName,stats[i],"stop",sep="")
      k=k+1
      colNames[k]=paste(featureName,stats[i],"waiting",sep="")
      k=k+1
      colNames[k]=paste(featureName,stats[i],"go",sep="")
      k=k+1
    }else{
      colNames[k]=paste(featureName,stats[i],"ALL",sep="")
      k=k+1
    }
  }
  
  plotDensity <- function(i){
    p <- ggplot(data) + 
      geom_density(aes_string(x=i,col="driverId")) 
    return(p)
  }
  
  g <- lapply(colNames, plotDensity)
  marrangeGrob(g, nrow=3, ncol=2)
  
  mltGrob=marrangeGrob(g, nrow=3, ncol=2)
  name=paste(fileName,"_",featureName,"_density.pdf",sep="")
  ggsave(name, mltGrob)
  
  # setwd("D:/R/drivingStyle/allTrips/output")
  # data=read.csv("229728_stop_and_go_statData.csv")
  # data$driverId=as.factor(data$driverId)
  # colNames=c("engineRateMaxgo","engineRateSDgo","brakePedalMeanwaiting","brakePedalMaxwaiting","brakeRateSDstop","brakeRateMaxstop")
  plotBox <- function(i){
    p <- ggplot(data, aes_string(x="driverId", y=i))+
      geom_boxplot()
    
    return(p)
  }
  g <- lapply(colNames, plotBox)
  mltGrob=marrangeGrob(g, nrow=3, ncol=2)
  name=paste(fileName,"_",featureName,"_box.pdf",sep="")
  ggsave(name, mltGrob)
  
  
}  

##pars: data,fileName,features,stats,byPhase
plotFeatures=function(data,fileName,features,stats,byPhase){
  n=length(features)
  ###plot for every features
  for (i in 1:n){
    plotSingleFeature(data,fileName,features[i],stats,byPhase)
  }
}

##### detect stop-and-go event
##### save stop-and-go meta data with eventId etc.
##### get statistics info of stop-and-go meta data
##### plot
main=function(carName){
  features=c("brakePedal","accelX","speed","engineSpeed","brakeRate","engineRate")
  stats=c("Mean","AbsMean","SD","CV","Kurtosis","Skew","Min","Max")
  phases=c("stop","waiting","go")
  
  #carName="229728test"
  setwd(paste("G:/DrivingStyle/Stop-Go-Event/Cruze/",carName,sep=""))
  
  ##parameters: durationLimit,beforeTime,afterTime,zeroLimit 
  data=detectEvent(50,50,50,5)
  setwd("../output")
  write.csv(data,file=paste(carName,"_stop_and_go","_metaData",".csv",sep=""),row.names = FALSE)
  
  byPhase="YES"  # stop waiting go
  
  ##parameters: data,features,byPhase: YES/NO
  dataStat=statFeatures(data,features,byPhase)
  write.csv(dataStat,file=paste(carName,"_stop_and_go","_statData",".csv",sep=""),row.names = FALSE)
  
  ##parameters: data,fileName,features,stats,byPhase
  # dataStat$driverId=as.factor(dataStat$driverId)
  # plotFeatures(dataStat,paste(carName,"_stop_and_go",sep=""),features,stats,byPhase)
}
main("229730")



# data <- read.csv('G:/DrivingStyle/Stop-Go-Event/Cruze/output/229727_stop_and_go_statData.csv')
# plotFeatures(data, 'doubleq',features,stats,"YES" )
# main("229728test")