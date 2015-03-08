file1<-read.table("household_power_consumption.txt", sep=";",header=TRUE,na.string="?",dec=".",stringsAsFactors=FALSE,colClasses=c(rep("character",2), rep("numeric",7)))
file1_s<-file1[(file1$Date=="1/2/2007" | file1$Date=="2/2/2007" ),]
png("./ExData_Plotting1-master/plot2.png",width=480, height=480)
library(lubridate)
dt<-dmy(file1_s$Date) + hms(file1_s$Time)
plot(dt, file1_s$Global_active_power,ylab="Global Active Power (kilowatts)",bg="aliceblue",type="l", lty=1, xlab=" ")

dev.off()