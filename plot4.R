setwd("~/Documents/Documents/OnlineCourse/Exploratory Data Analysis/Week 1/Project")

power <- read.csv("~/Documents/Documents/OnlineCourse/Exploratory Data Analysis/Week 1/Project/household_power_consumption.txt", sep=";")

household = power[power$Date == "1/2/2007" | power$Date == "2/2/2007",]

# Plot 4

png(filename = "plot4.png",width = 480, height = 480)
par(mfcol = c(2,2))

plot(as.numeric(as.character(household$Global_active_power)), type = "l", xaxt = "n",xlab = "", ylab = "Global Active Power (kilowatts)",bg = "white")
axis(1,tick = T, at = c(0,1401,2800),labels = c("Thu","Fri","Sat"))

plot(as.numeric(as.character(household$Sub_metering_1)), type = "l", xaxt = "n",xlab = "", ylab = "Energy sub metering",bg = "white")
axis(1,tick = T, at = c(0,1401,2800),labels = c("Thu","Fri","Sat"))
lines(as.numeric(as.character(household$Sub_metering_2)), col = "red")
lines(as.numeric(as.character(household$Sub_metering_3)), col = "blue")
legend("topright",lwd =1, col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(as.numeric(as.character(household$Voltage)), type = "l", xaxt = "n",xlab = "datetime", ylab = "Voltage",bg = "white")
axis(1,tick = T, at = c(0,1401,2800),labels = c("Thu","Fri","Sat"))

plot(as.numeric(as.character(household$Global_reactive_power)), 
     type = "l", xaxt = "n",xlab = "datetime", ylab = "Global_reactive_power",bg = "white")
axis(1,tick = T, at = c(0,1401,2800),labels = c("Thu","Fri","Sat"))

dev.off()
