#Plot 3

source('./GetData.R')

#Get Data for Plot
data<-getdata()

#Start Graphic device
png(file = "Plot3.png", height = 480, width = 480)

#Create and format plot 3

with(data, plot(Sub_metering_1~datetime,type="l",ylab="Energy sub metering", xlab= ""))
with(data, lines(Sub_metering_2~datetime,type="l", col="red"))
with(data, lines(Sub_metering_3~datetime,type="l", col="blue"))

legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Save Plot

dev.off()