setwd("~/Documents/Documents/OnlineCourse/Exploratory Data Analysis/Week 1/Project")

power <- read.csv("~/Documents/Documents/OnlineCourse/Exploratory Data Analysis/Week 1/Project/household_power_consumption.txt", sep=";")

household = power[power$Date == "1/2/2007" | power$Date == "2/2/2007",]

# Plot 3
plot(as.numeric(as.character(household$Sub_metering_1)), type = "l", xaxt = "n",xlab = "", ylab = "Energy sub metering",bg = "white")
axis(1,tick = T, at = c(0,1401,2800),labels = c("Thu","Fri","Sat"))
lines(as.numeric(as.character(household$Sub_metering_2)), col = "red")
lines(as.numeric(as.character(household$Sub_metering_3)), col = "blue")
legend("topright",lwd =1, col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png, file = "plot3.png", width = 480, height = 480,bg = "white")
dev.off()
