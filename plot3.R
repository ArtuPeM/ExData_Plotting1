plot(data$Time, data$Submetering1, type = "l", xlab = "", ylab = "Energy Sub Metering")
lines(data$Time, data$Submetering2, col = "red")
lines(data$Time, data$Submetering3, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Submetering1", "Submetering2", "Submetering3"), cex = 0.7, pt.cex = 1)
dev.copy(png, file="plot3.png")
dev.off()
