setwd('~/Dropbox/coursera/exdata//week1//ExData_Plotting1')

data = read.table('subset.txt',header=TRUE,sep=';')
data$DateTime = paste(data$Date, data$Time)
data$DateTime = strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")

png('plot2.png',width=480, height=480)
plot(data$DateTime, data$Global_active_power, type='n',main='',
     xlab ='', ylab='Global Active Power (kilowatts)')
lines(data$DateTime, data$Global_active_power)

dev.off()
