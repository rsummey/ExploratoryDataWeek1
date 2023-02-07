plot.new()
par(mfrow=c(2,2), mar = c(2,4,4,2), oma = c(0,0,0,0))
png(file="plot4.png", width=480, height=480)
plot((daydate$date + daydate$Time), daydate$Global_active_power,
     ylab = "Global Active Power", xlab = " ", type = "l", lty = 1, cex.axis=0.5)
plot((daydate$date + daydate$Time), daydate$Voltage, xlab = "datetime",
     ylab = "Voltage",
     type = "l", lty = 1, cex.axis=0.5)
plot((daydate$date + daydate$Time), daydate$Sub_metering_1, col = "black",
     ylab = "Energy Sub Metering", xlab = " ", type = "l", lty = 1, ylim = c(0,40),
     cex.axis=0.5)
points((daydate$date + daydate$Time), daydate$Sub_metering_2, col = "red",
       type = "l", lty = 1)
points((daydate$date + daydate$Time), daydate$Sub_metering_3, col = "blue",
       type = "l", lty = 1)
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1:2, cex=0.8)
plot((daydate$date + daydate$Time), daydate$Global_reactive_power, xlab = "datetime",
     ylab = "Global_reactive_power",
     type = "l", lty = 1, cex.axis=0.5)
dev.off()
