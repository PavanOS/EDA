GetPowerConsumptionData <-function ()
{
  
df<-read.table(pipe('grep "^1/2/2007\\|^2/2/2007\\|Global" household_power_consumption.txt'), header = TRUE, sep = ";",
               dec = ".", na.strings = "?", nrows = -1,
               skip = 0, check.names = TRUE, strip.white = FALSE)

##df$newcol <- apply(df,1,function(row) strptime(paste(row[1],row[2],sep=" "),"%d/%m/%Y %X"))
##df$newcol <- apply(df,1,function(row) paste(row[1],row[2],sep=" "))
df$newcol <- strptime(paste(df[,1],df[,2],sep=" "),"%d/%m/%Y %X")

df
}