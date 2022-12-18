#plot 4
png("plot4.png")

par(mfrow = c(2,2))

with(data, plot(Time, Global_active_power, type="l", xlab = "", ylab = "Global Active Power"))

with(data, plot(Time, Voltage, type="l", ylab = "Voltage"))


with(data, 
     plot(Time, Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering")) +
      lines(data$Time, data$Sub_metering_2, col = "red") + 
      lines(data$Time, data$Sub_metering_3, col = "blue") 
with(data, plot(Time, Global_reactive_power, type="l"))

dev.off()
