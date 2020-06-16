# reading the data from the file 
data <- read.table("C:/Users/KADEM JASHWANTH/Documents/dataset/household_power_consumption.txt",stringsAsFactors = F,header=T,sep=";")

# exploring names,dim of dataset
print(dim(data))
print(names(data))

# changing classes of variables
data$Date <- as.Date(data$Date,format="%d/%m/%Y")
data$Time <- format(data$Time,format="%H:%M:%S")
data$Global_active_power <- as.numeric(data$Global_active_power)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
data$Voltage <- as.numeric(data$Voltage)
data$Global_intensity <- as.numeric(data$Global_intensity)
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)

#subsetting the data
new_data<- subset(data,data$Date=="2007-02-01" | data$Date=="2007-02-02")

#plotting the histogram

hist(new_data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.copy(png,file="plot1.png")
dev.off()

