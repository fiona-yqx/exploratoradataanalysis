setwd("~/Documents/Documents/OnlineCourse/Exploratory Data Analysis/Week 1/Project")

power <- read.csv("~/Documents/Documents/OnlineCourse/Exploratory Data Analysis/Week 1/Project/household_power_consumption.txt", sep=";")

household = power[power$Date == "1/2/2007" | power$Date == "2/2/2007",]

# Plot 2
plot(as.numeric(as.character(household$Global_active_power)), type = "l", xaxt = "n",xlab = "", ylab = "Global Active Power (kilowatts)",bg = "white")
axis(1,tick = T, at = c(0,1401,2800),labels = c("Thu","Fri","Sat"))

dev.copy(png, file = "plot2.png", width = 480, height = 480,bg = "white")
dev.off()
