hist(data$Globalactivepower, main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     col = "red")
dev.copy(png, file = "plot1.png")
dev.off()
