getdata<-function(){
if (!require("dplyr")) {
  install.packages("dplyr")}

housepc<- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")

# convert the date variable to Date class
housepc$Date <- as.Date(housepc$Date, format = "%d/%m/%Y")

# Subset the data
housepc <- subset(housepc, Date >= "2007-02-01" & Date <= "2007-02-02")

# create datetime variable
housepc$datetime <- as.POSIXct(strptime(paste(housepc$Date, housepc$Time), "%Y-%m-%d %H:%M:%S"))

#return dataframe
housepc
}

