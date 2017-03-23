Sys.setlocale('LC_ALL', 'C')
df <- within(
  read.delim('./household_power_consumption.txt', sep=';'), 
  { 
    timestamp = strptime(paste(Date, Time), '%d/%m/%Y %H:%M:%S')
  }
)
png(filename = './plot2.png', 
    width = 480, 
    height = 480)
plot(df$timestamp, 
     df$Global_active_power, 
     type = 'n',
     xlab = '',
     ylab = 'GLobal Active Power (killowatts)')
lines(df$timestamp, df$Global_active_power)
dev.off()