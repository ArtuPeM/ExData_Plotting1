png(filename = "plot4.png")
par(mfcol = c(2,2), mar = c(3,4,1,1))
#1
plot(data$Time, data$Globalactivepower, type = "l", ylab = "Global Active Power", xlab = "")
#2
plot(data$Time, data$Submetering1, type = "l", xlab = "", ylab = "Energy Sub Metering")
lines(data$Time, data$Submetering2, col = "red")
lines(data$Time, data$Submetering3, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Submetering1", "Submetering2", "Submetering3"), seg.len = .8, cex = 1)
#3
plot(data$Time, data$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")

#4
plot(data$Time, data$Globalreactivepower, xlab = "datetime", ylab = "Global Reactive Power", 
     type = "l")
dev.off()
