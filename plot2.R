#format graphic window for only graphic per row and columun
par(mfrow=c(1,1))


png(filename = "plot2.png")

#create a scatter plot with lines

with(power,plot(Datec,Global_active_power,type="l",ylab="Global Active Power (Kilowatts)",xlab=""))

## Close the png file device
dev.off()  