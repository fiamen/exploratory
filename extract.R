
# read file from working directory
temp=read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors =FALSE,na.strings = "?")



temp$Datec=paste(temp$Date,temp$Time)


#Transform Date variable to date format
temp$Date=as.Date(temp$Date,"%d/%m/%Y")

# Only keep data from year 2007
power=subset(temp, year(Date)==2007 & month(Date)==2 & (day(Date)==1 |day(Date)==2) )


# remove first table extraction
rm(temp)

#convert characters to numerics
power$Global_active_power=as.numeric(power$Global_active_power)
power$Global_reactive_power=as.numeric(power$Global_reactive_power)
power$Voltage=as.numeric(power$Voltage)
power$Global_intensity=as.numeric(power$Global_intensity)
power$Sub_metering_1=as.numeric(power$Sub_metering_1)
power$Sub_metering_2=as.numeric(power$Sub_metering_2)
power$Sub_metering_3=as.numeric(power$Sub_metering_3)

#write formated subsetted table
write.table(power,file="power.txt")

# Format variable for time series
power$Datec=as.POSIXlt(power$Datec,format="%d/%m/%Y %H:%M:%S")

