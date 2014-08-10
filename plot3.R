#format graphic window for only graphic per row and columun
par(mfrow=c(1,1))


png(filename = "plot3.png")

#create a scatter plot with 3 lines
with(power,plot(Datec,Sub_metering_1,type="l",ylab="Energy sub metering",xlab=""))
with(power,points(Datec,Sub_metering_2,type="l",col="red"))
with(power,points(Datec,Sub_metering_3,type="l",col="blue"))

# Creates the legend
legend("topright", lty= 1, col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))


## Close the png file device
dev.off()  