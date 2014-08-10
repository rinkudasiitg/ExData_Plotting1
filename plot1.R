png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", col = "red", breaks = 13, ylim = c(0, 1200), xlim = c(0, 6), xaxp = c(0, 6, 3))
dev.off()