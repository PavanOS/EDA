source("GetData.R")
df <- GetPowerConsumptionData()
png(filename="plot3.png", width=480, height=480, units="px")
plot(df$newcol,df$Sub_metering_1,pch='.',ylab="Energy sub metering",xlab="",ylim=range(df$Sub_metering_1),main="")
lines(df$newcol,df$Sub_metering_1)
par(new=T)
plot(df$newcol,df$Sub_metering_2,pch='.',axes=FALSE,ylab="",xlab="",ylim=range(df$Sub_metering_1),col='red',main="")
lines(df$newcol,df$Sub_metering_2,col='red')
par(new=T)
plot(df$newcol,df$Sub_metering_3,pch='.',axes=FALSE,ylab="",xlab="",ylim=range(df$Sub_metering_1),col='blue',main="")
lines(df$newcol,df$Sub_metering_3,col='blue')
legend('topright',legend=c("Sub metering 1","Sub metering 2","Sub metering 3"), col=c("black","red","blue"),lwd=2)
par(new=F)
dev.off()