#Read data file
powerdata <- read.table("household_power_consumption.txt",stringsAsFactors = F, header = T, sep=";")
#Create Time Date Column
powerdata$Time_Date <- strptime(paste(powerdata$Date, powerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
#Create Subset
sub_powerdata <- subset(powerdata, powerdata$Date=="1/2/2007" | powerdata$Date == "2/2/2007")
#Create Plot
png("Plot2.png", width=480, height=480)
plot(sub_powerdata$Time_Date,as.numeric(as.character(sub_powerdata$Global_active_power)),type="l",xlab="Day",ylab="Global Active Power (kilowatts)") 
dev.off()