pwr <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(pwr) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpwr <- subset(pwr,pwr$Date=="1/2/2007" | pwr$Date =="2/2/2007")


hist(as.numeric(as.character(subpwr$Global_active_power)),col="green",main="Global Active Power",xlab="Global Active Power(kilowatts)")
title(main="Global Active Power")


