file1<-read.table("household_power_consumption.txt", sep=";",header=TRUE,na.string="?",dec=".",stringsAsFactors=FALSE,colClasses=c(rep("character",2), rep("numeric",7)))
file1_s<-file1[(file1$Date=="1/2/2007" | file1$Date=="2/2/2007" ),]
png("./ExData_Plotting1-master/plot1.png",width=480, height=480)
hist(file1_s$Global_active_power,col="red", breaks=12,xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()