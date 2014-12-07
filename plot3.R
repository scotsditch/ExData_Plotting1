HouseData <- read.table("~/exdata-data-household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
YearsHouseData <- HouseData[HouseData$Date %in% c("1/2/2007","2/2/2007") ,]
datedata <- strptime(paste(YearsHouseData$Date, YearsHouseData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot3.png", width=480, height=480)
plot(datedata, as.numeric(YearsHouseData$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(datedata, as.numeric(YearsHouseData$Sub_metering_2), type="l", col="red")
lines(datedata, as.numeric(YearsHouseData$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()