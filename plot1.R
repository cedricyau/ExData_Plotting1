setwd('~/Dropbox/coursera/exdata//week1//ExData_Plotting1')

data = read.table('subset.txt',header=TRUE,sep=';')
data$DateTime = paste(data$Date, data$Time)
data$DateTime = strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")


png('plot1.png',width=480, height=480)
hist(data$Global_active_power, col='red', main = 'Global Active Power',
     xlab = 'Global Active Power (kilowatts)')
dev.off()

