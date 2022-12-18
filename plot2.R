#plot 2
png("plot2.png")
with(data, plot(Time, Global_active_power, type="l", xlab = "", ylab = ""))
dev.off()
