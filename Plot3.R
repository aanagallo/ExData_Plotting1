#Read data file
powerdata <- read.table("household_power_consumption.txt",stringsAsFactors = F, header = T, sep=";")
#Create Time Date Column
powerdata$Time_Date <- strptime(paste(powerdata$Date, powerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
#Create Subset
sub_powerdata <- subset(powerdata, powerdata$Date=="1/2/2007" | powerdata$Date == "2/2/2007")
#Create Plot
png("Plot3.png", width=480, height=480)
with(sub_powerdata,plot(Time_Date, as.numeric(as.character(Sub_metering_1)),type="l", xlab="Day", ylab="Energy sub metering"))
with(sub_powerdata,lines(Time_Date,as.numeric(as.character(Sub_metering_2)),col="red"))
with(sub_powerdata,lines(Time_Date,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty= 1, lwd=2, col = c("black", "red", "blue"))
dev.off()