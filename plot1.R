##expl data read data, plot 1
library(data.table)
library(dplyr)
library(lubridate)
URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(URL, "explweek1.csv", method = "curl")
df <- read_delim("explweek1.csv")
df1 <- df
head(df)
which(df$Date == "2/2/2007")
dates <- with(df, df[(Date == "2/2/2007" | Date == "2/1/2007"), ])
head(dates)
dates$Global_active_power <- as.numeric(dates$Global_active_power)
par(mfrow=c(1,1))

png(file="globalactive_bar.png", width=480, height=480)
hist(dates$Global_active_power, main = "Global Active Power", col = "red",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
     xlim = c(0,8), xaxs = "i")
axis(1, at = c(2,4,6), labels = TRUE)
dev.off()
