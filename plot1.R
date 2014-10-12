setwd("~/Documents/Documents/OnlineCourse/Exploratory Data Analysis/Week 1/Project")

power <- read.csv("~/Documents/Documents/OnlineCourse/Exploratory Data Analysis/Week 1/Project/household_power_consumption.txt", sep=";")

household = power[power$Date == "1/2/2007" | power$Date == "2/2/2007",]

#Plot 1

hist(as.numeric(as.character(household$Global_active_power)),col="red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power", bg = "white")

dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()

