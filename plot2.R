## Exploratory Data Analysys, Assignment week 1 

## getting data for Plot2
setwd("HouseholdPowerConsumption/")
HPCdata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 
power_consumption_feb0102 <- HPCdata[HPCdata$Date %in% c("1/2/2007","2/2/2007") ,] 

## Creating Global Active Power Plot (datetime) 
png("plot2.png", width=480, height=480) 
plot(strptime(paste(power_consumption_feb0102$Date, power_consumption_feb0102$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(power_consumption_feb0102$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)") 
dev.off() 