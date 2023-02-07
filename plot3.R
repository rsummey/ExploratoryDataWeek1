plot.new()
par(mfrow=c(1,1))
png(file="plot3.png", width=480, height=480)
summary(daydate$Sub_metering_3)
daydate$Sub_metering_1 <- as.numeric(daydate$Sub_metering_1)
daydate$Sub_metering_2 <- as.numeric(daydate$Sub_metering_2)
summary(daydate$Sub_metering_1)
summary(daydate$Sub_metering_2)
plot((daydate$date + daydate$Time), daydate$Sub_metering_1, col = "black",
     ylab = "Energy Sub Metering", xlab = " ", type = "l", lty = 1, ylim = c(0,40))
points((daydate$date + daydate$Time), daydate$Sub_metering_2, col = "red",
      type = "l", lty = 1)
points((daydate$date + daydate$Time), daydate$Sub_metering_3, col = "blue",
       type = "l", lty = 1)
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1:2, cex=0.8)
dev.off()
