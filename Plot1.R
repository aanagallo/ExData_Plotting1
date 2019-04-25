#Read data file
powerdata <- read.table("household_power_consumption.txt",stringsAsFactors = F, header = T, sep=";")
#Create Subset
sub_powerdata <- subset(powerdata, powerdata$Date=="1/2/2007" | powerdata$Date == "2/2/2007")
#Create Histogram and annotate
png("Plot1.png", width = 480, height = 480)
hist(as.numeric(as.character(sub_powerdata$Global_active_power)),col="red",border = "black", main="Global Active Power", xlab = "Global Active Power(kilowatts)", ylab = "Frequency")
dev.off()
