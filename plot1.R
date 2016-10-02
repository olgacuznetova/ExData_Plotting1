## Exploratory Data Analysys, Assignment week 1 

## getting data for Plot1
setwd("HouseholdPowerConsumption/")
HPCdata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 
power_consumption_feb0102 <- HPCdata[HPCdata$Date %in% c("1/2/2007","2/2/2007") ,] 

## Creating Global Active Power Plot
png("plot1.png", width=480, height=480) 
hist(as.numeric(power_consumption_feb0102$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 
dev.off() 