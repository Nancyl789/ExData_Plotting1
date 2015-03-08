file1<-read.table("household_power_consumption.txt", sep=";",header=TRUE,na.string="?",dec=".",stringsAsFactors=FALSE,colClasses=c(rep("character",2), rep("numeric",7)))
file1_s<-file1[(file1$Date=="1/2/2007" | file1$Date=="2/2/2007" ),]
library(lubridate)
dt<-dmy(file1_s$Date) + hms(file1_s$Time)
png("./ExData_Plotting1-master/plot3.png",width=480, height=480)

plot(dt, file1_s$Sub_metering_1,ylab="Energy sub metering",bg="aliceblue",type="l", lty=1, xlab=" ", col="black")
lines(dt, file1_s$Sub_metering_2,ylab="Energy sub metering",bg="aliceblue",type="l", lty=1, xlab=" ", col="red")
lines(dt, file1_s$Sub_metering_3,ylab="Energy sub metering",bg="aliceblue",type="l", lty=1, xlab=" ", col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))

dev.off()