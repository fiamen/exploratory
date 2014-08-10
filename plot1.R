#format graphic window for only graphic per row and columun
par(mfrow=c(1,1))


png(filename = "plot1.png")

#create a histogram

with(power,hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)"))

## Close the png file device
dev.off()  