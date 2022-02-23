pwr <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(pwr) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpwr <- subset(pwr,pwr$Date=="1/2/2007" | pwr$Date =="2/2/2007")

dt <- strptime(paste(subpwr$Date, subpwr$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subpwr$Global_active_power)
globalReactivePower <- as.numeric(subpwr$Global_reactive_power)
voltage <- as.numeric(subpwr$Voltage)
submtr1 <- as.numeric(subpwr$Sub_metering_1)
submtr2 <- as.numeric(subpwr$Sub_metering_2)
submtr3 <- as.numeric(subpwr$Sub_metering_3)

par(mfrow = c(2, 2)) 

plot(dt, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(dt, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(dt, submtr1, type="l", ylab="Energy Submetering", xlab="")
lines(dt, submtr2, type="l", col="red")
lines(dt, submtr3, type="l", col="blue")

legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex = 0.6)

plot(dt, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")
