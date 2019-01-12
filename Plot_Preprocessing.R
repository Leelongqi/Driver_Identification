library(ggplot2)
library(grid)
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
data <- read.csv("G:/DrivingStyle/Stop-Go-Event/Buick/229727/CCHN_0022_229727_46_130804_0757_00014.csv")
data$System.Time_Stamp <- (data$System.Time_Stamp)*0.1
#update speed
data$speed=data$FOT_Control.Speed
data$speed[is.na(data$speed)]=0
data$speed <- updateData(data[,'speed'])
#update brakepedel
data$brakePedal=data$VehicleCAN_1.BrakePedalPosition
data$brakePedal[is.na(data$brakePedal)]=0
data$brakePedal <- updateData(data[,'brakePedal'])
#update accelx
data$accelX=data$IMU.Accel_X
data$accelX[is.na(data$accelX)]=0 # replace null values by 0
data$accelX = updateData(data$accelX)
#update enginespeed
data$engineSpeed=data$VehicleNetworkBox.EngineSpeed
data$engineSpeed[is.na(data$engineSpeed)]=0 # replace null values by 0
data$engineSpeed=updateData(data$engineSpeed) # replace zero in ..0.. ..00.. ..000..

grid.newpage()
pushViewport(viewport(layout = grid.layout(4, 1)))
vplayout = function(x, y) viewport(layout.pos.row = x, layout.pos.col = y)
p1 <- ggplot(data, aes(x=System.Time_Stamp, y=speed)) +geom_line(aes(group=1), colour="#000099")  +
  labs(title = "Velocity-Time",x = "Time(s)",y = "Velocity(m/s)") +
  theme(plot.title = element_text(hjust = 0.5,size = 11)) 

p2 <- ggplot(data, aes(x=System.Time_Stamp, y=brakePedal)) +geom_line(aes(group=2), colour="#E69F00") +
  labs(title = "BrakePedalPosition-Time",x = "Time(s)",y = "BrakePedal Postion(%)") +
  
  theme(plot.title = element_text(hjust = 0.5,size = 11)) 

p3 <- ggplot(data, aes(x=System.Time_Stamp, y=accelX)) +geom_line(aes(group=3), colour="#009E73") +
  labs(title = "Acceleration-Time",x = "Time(s)",y = "Acceleration(m/s2)") +
  theme(plot.title = element_text(hjust = 0.5,size = 11)) 

p4 <- ggplot(data, aes(x=System.Time_Stamp, y=engineSpeed)) +geom_line(aes(group=4), colour="#56B4E9") +
  labs(title = "EngineSpeed-Time",x = "Time(s)",y = "EngineSpeed(r/min)") +
  theme(plot.title = element_text(hjust = 0.5,size = 11)) 

print(p1, vp = vplayout(1, 1))
print(p2, vp = vplayout(2, 1))
print(p3, vp = vplayout(3, 1))
print(p4, vp = vplayout(4, 1))







