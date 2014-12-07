HouseData <- read.table("~/exdata-data-household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
YearsHouseData <- HouseData[HouseData$Date %in% c("1/2/2007","2/2/2007") ,]
PowerData <- as.numeric(YearsHouseData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(PowerData, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()