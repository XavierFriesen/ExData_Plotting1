#plot 2
png("plot3.png")
with(data, 
     plot(Time, Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering")) +
     lines(data$Time, data$Sub_metering_2, col = "red") + 
     lines(data$Time, data$Sub_metering_3, col = "blue") 

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c('black', "red", "blue"))
dev.off()

