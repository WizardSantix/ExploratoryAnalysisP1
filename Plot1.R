#Plot 1

source('./GetData.R')

#Get Data for Plot
data<-getdata()

#Start Graphic device

png(file = "Plot1.png", height = 480, width = 480)

#Create and format plot
hist(data$Global_active_power,col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")

#Save Plot

dev.off()
