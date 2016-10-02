## Exploratory Data Analysys, Assignment week 1 

## getting data for Plot3
setwd("HouseholdPowerConsumption/")
HPCdata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 
power_consumption_feb0102 <- HPCdata[HPCdata$Date %in% c("1/2/2007","2/2/2007") ,] 

## Creating energy sub metering Plot
png("plot3.png", width=480, height=480) 
plot(strptime(paste(power_consumption_feb0102$Date, power_consumption_feb0102$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(power_consumption_feb0102$Sub_metering_1), type="l", ylab="Energy sub metering", xlab="") 
lines(strptime(paste(power_consumption_feb0102$Date, power_consumption_feb0102$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(power_consumption_feb0102$Sub_metering_2), type="l", col="red") 
lines(strptime(paste(power_consumption_feb0102$Date, power_consumption_feb0102$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(power_consumption_feb0102$Sub_metering_3), type="l", col="blue") 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue")) 
dev.off() 
