library(ggplot2)
dates
daydate <- dates
daydate <- daydate %>% mutate(day = wday(daydate$Date, label = TRUE))
head(daydate)
daydate$Date <- gsub(
  pattern = ('/'),
  replacement = '-',
  x = daydate$Date
)

daydate$date <- format(daydate$Date, format = "%m:%d:%Y")
daydate$date <- as.POSIXct(daydate$date, format = "%m:%d:%Y")
daydate$date <- mdy(daydate$Date)
daydate$Time <- hms(daydate$Time)
plot.new()
par(mfrow=c(1,1))
png(file="plot2.png", width=480, height=480)
plot((daydate$date + daydate$Time), daydate$Global_active_power,
      ylab = "Global Active Power (kilowatts)", type = "l", lty = 1)
dev.off()

