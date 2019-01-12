
library(ggplot2)
data1 <- read.csv("G:/DrivingStyle/Stop-Go-Event/Buick/output/229727_stop_and_go_statData.csv")
data1$driverId[which(data1$driverId==22)] <- "D1"
data1$driverId[which(data1$driverId==26)] <- "D2"
data1$driverId <- as.factor(data1$driverId)
colNames1=c("brakePedalMeanstop","brakePedalMaxstop")

data2 <- read.csv("G:/DrivingStyle/Stop-Go-Event/Buick-I/output/229728_stop_and_go_statData.csv")
data2$driverId[which(data2$driverId==21)] <- "D3"
data2$driverId[which(data2$driverId==25)] <- "D4"
data2$driverId <- as.factor(data2$driverId)
colNames2=c("brakePedalSkewwaiting","brakePedalKurtosiswaiting")

data3 <- read.csv("G:/DrivingStyle/Stop-Go-Event/Cruze/output/229730_stop_and_go_statData.csv")
data3$driverId[which(data3$driverId==16)] <- "D5"
data3$driverId[which(data3$driverId==18)] <- "D6"
data3$driverId <- as.factor(data3$driverId)
colNames3=c("engineRateAbsMeango","engineRateMaxgo")


p1 <- ggplot(data1, aes_string(x="driverId", y=colNames1[1]))+geom_boxplot()
p2 <- ggplot(data1, aes_string(x="driverId", y=colNames1[2]))+geom_boxplot()
 
p3 <- ggplot(data2, aes_string(x="driverId", y=colNames2[1]))+geom_boxplot()
p4 <- ggplot(data2, aes_string(x="driverId", y=colNames2[2]))+geom_boxplot()

p5 <- ggplot(data3, aes_string(x="driverId", y=colNames3[1]))+geom_boxplot()
p6 <- ggplot(data3, aes_string(x="driverId", y=colNames3[2]))+geom_boxplot()

g <- list(p1,p2,p3,p4,p5,p6)
mltGrob=marrangeGrob(g, nrow=2, ncol=3)
ggsave("G:/DrivingStyle/Stop-Go-Event/Plot_Box/1.png",mltGrob)
