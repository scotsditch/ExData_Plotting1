HouseData <- read.table("~/exdata-data-household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
YearsHouseData <- HouseData[HouseData$Date %in% c("1/2/2007","2/2/2007") ,]
datedata <- strptime(paste(YearsHouseData$Date, YearsHouseData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
PowerData <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datedata, PowerData, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()