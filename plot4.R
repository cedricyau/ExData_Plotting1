setwd('~/Dropbox/coursera/exdata//week1//ExData_Plotting1')

data = read.table('subset.txt',header=TRUE,sep=';')
data$DateTime = paste(data$Date, data$Time)
data$DateTime = strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")

png('plot4.png',width=480, height=480)
plot.new()
par(mfrow=c(2,2))
#Plot 1
plot(data$DateTime, data$Global_active_power, type='n',main='',
     xlab ='', ylab='Global Active Power')
lines(data$DateTime, data$Global_active_power)
#Plot 2
plot(data$DateTime, data$Voltage, type='n',main='',
     xlab ='datetime', ylab='Voltage')
lines(data$DateTime, data$Voltage)

#Plot 3 
plot(data$DateTime, data$Sub_metering_1, type='n',main='',
     xlab ='', ylab='Energy sub metering')
lines(data$DateTime, data$Sub_metering_1, col='black')
lines(data$DateTime, data$Sub_metering_2, col='red')
lines(data$DateTime, data$Sub_metering_3, col='blue')
legend('topright',,c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       lty=c(1,1,1), 
       lwd=c(2.5, 2.5, 2.5), 
       col=c('black','red','blue'),
       box.lwd=0)
#Plot 4
plot(data$DateTime, data$Global_reactive_power, type='n',main='',
     xlab ='datetime', ylab='Global_reactive_power')
lines(data$DateTime, data$Global_reactive_power)

dev.off()

plot.new()
