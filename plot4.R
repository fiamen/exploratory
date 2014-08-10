#format graphic window for two rows and two columuns
par(mfrow=c(2,2),mar=c(4,4,2,1))


png(filename = "plot4.png")

#creates the first graphic
with(power,plot(Datec,Global_active_power,type="l",ylab="Global Active Power",xlab=""))

#creates the second graphic
with(power,plot(Datec,Voltage,type="l",xlab="Datetime"))


#create the third graphic
with(power,plot(Datec,Sub_metering_1,type="l",ylab="Energy sub metering",xlab=""))
with(power,points(Datec,Sub_metering_2,type="l",col="red"))
with(power,points(Datec,Sub_metering_3,type="l",col="blue"))
legend("topright", lty= 1, col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))


#creates the fourth graphic
with(power,plot(Datec,Global_reactive_power,type="l",xlab="Datetime"))

## Close the png file device
dev.off()  