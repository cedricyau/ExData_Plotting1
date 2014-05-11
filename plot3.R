setwd('~/Dropbox/coursera/exdata//week1//ExData_Plotting1')

data = read.table('subset.txt',header=TRUE,sep=';')
data$DateTime = paste(data$Date, data$Time)
data$DateTime = strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")

png('plot3.png',width=480, height=480)

plot(data$DateTime, data$Sub_metering_1, type='n',main='',
     xlab ='', ylab='Energy sub metering')
lines(data$DateTime, data$Sub_metering_1, col='black')
lines(data$DateTime, data$Sub_metering_2, col='red')
lines(data$DateTime, data$Sub_metering_3, col='blue')
legend('topright',,c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       lty=c(1,1,1), 
       lwd=c(2.5, 2.5, 2.5), 
       col=c('black','red','blue'))
dev.off()
