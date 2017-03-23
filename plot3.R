Sys.setlocale('LC_ALL', 'C')
df <- within(
  read.delim('./household_power_consumption.txt', sep=';'), 
  { 
    timestamp = strptime(paste(Date, Time), '%d/%m/%Y %H:%M:%S')
  }
)
png(filename = './plot3.png', 
    width = 480, 
    height = 480)

par(mfrow = c(1, 1))
plot(df$timestamp,
     df$Sub_metering_1,
     type = 'n',
     xlab = '',
     ylab = 'Energy sub metering',
     ylim = range(0:40))
lines(
  df$timestamp, 
  df$Sub_metering_1, 
  col = 'black')
lines(
  df$timestamp, 
  df$Sub_metering_2, 
  col = 'red')
lines(
  df$timestamp, 
  df$Sub_metering_3, 
  col = 'blue')
legend('topright', 
       c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       lty=1,
       lwd=1,
       col=c('black', 'red', 'blue'), 
       bty='o')

dev.off()
