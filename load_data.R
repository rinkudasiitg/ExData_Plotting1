#Create a subsetted data file by issuing the following on the command line
#head -n 1 household_power_consumption.txt > feb2007data.txt
#cat household_power_consumption.txt  | grep '^0\{0,1\}[12]/0\{0,1\}2/2007' >> feb2007data.txt

#Read the data into a data table
datafile <- "feb2007data.txt"
data <- read.table(datafile, sep = ";", header = TRUE, na.strings = "?")

#Perform some conversions on the date and time values
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")