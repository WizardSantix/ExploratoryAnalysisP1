#Plot 4

source('./GetData.R')

#Get Data for Plot
data<-getdata()

#Start Graphic device
png(file = "Plot4.png", height = 480, width = 480)

#Set the 4x4 grid
par(mfrow = c(2, 2))

#AddPlot1
with(data, plot(Global_active_power~datetime,type="l",ylab="Global Active Power",xlab=""))

#AddPlot2
with(data, plot(Voltage~datetime,type="l"))

#AddPlot3
with(data, plot(Sub_metering_1~datetime,type="l",ylab="Energy sub metering", xlab= ""))
with(data, lines(Sub_metering_2~datetime,type="l", col="red"))
with(data, lines(Sub_metering_3~datetime,type="l", col="blue"))

legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")

#AddPlot4
with(data, plot(Global_reactive_power~datetime,type="l"))

#Save Plot

dev.off()

