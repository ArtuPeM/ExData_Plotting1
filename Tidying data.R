#1 Tidying data
data <- read.table("household_power_consumption.txt", sep = ";")
names <- as.character(data[1,])
names <- gsub("_", "", names)
names(data) <- names
data <- data[2:length(data$Date),]
data <- data[data$Date == "1/2/2007"| data$Date=="2/2/2007",]

#1.1 Coercing class variables
data$Globalactivepower <- as.numeric(data$Globalactivepower)
data$Globalreactivepower <- as.numeric(data$Globalreactivepower)
data$Voltage <- as.numeric(data$Voltage)
data$Globalintensity <- as.numeric(data$Globalintensity)
data$Submetering1 <- as.numeric(data$Submetering1)
data$Submetering2 <- as.numeric(data$Submetering2)
data$Submetering3 <- as.numeric(data$Submetering3)
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data$Time <- strptime(data$Time, format =  "%H:%M:%S")
data[1:1440,"Time"] <- format(data[1:1440,"Time"],"2007-02-01 %H:%M:%S")
data[1441:2880,"Time"] <- format(data[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
str(data)

