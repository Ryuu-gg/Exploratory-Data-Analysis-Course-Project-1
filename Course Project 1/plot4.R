pwr <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(pwr) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpwr <- subset(pwr,pwr$Date=="1/2/2007" | pwr$Date =="2/2/2007")

dt <- strptime(paste(subpwr$Date, subpwr$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subpwr$Global_active_power)
submtr1 <- as.numeric(subpwr$Sub_metering_1)
submtr2 <- as.numeric(subpwr$Sub_metering_2)
submtr3 <- as.numeric(subpwr$Sub_metering_3)