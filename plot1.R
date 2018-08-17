## This is to plot the first plot

## Set wd and read the data. Adjust the date format
setwd("D:/R_tutorial/Plot1/household_power_consumption")



data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data$Date <- as.Date(data1$Date, format="%d/%m/%Y")


## Plot the hist
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")




dev.off()

