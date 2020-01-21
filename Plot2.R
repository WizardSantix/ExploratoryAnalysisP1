#Plot 2

source('./GetData.R')

#Get Data for Plot
data<-getdata()

#Start Graphic device
png(file = "Plot2.png", height = 480, width = 480)

#Create and format plot 2

with(data, plot(Global_active_power~datetime,type="l",ylab="Global Active Power (kilowatts)", xlab= ""))

#Save Plot

dev.off()