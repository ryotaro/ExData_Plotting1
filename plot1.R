png(filename = './plot1.png', 
    width = 480, 
    height = 480)

hist(
  read.delim(
    './household_power_consumption.txt',
    sep=';'
  )[, 'Global_active_power'], 
  xlab = 'Global Active Power', 
  ylab = 'Frequency', 
  main='Global Active Power',
  col = 'red'
)

dev.off()
