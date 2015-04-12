##Plot3

setwd("~/R/Exploratory Data analysis")
df<-read.csv("~/R/Exploratory Data analysis/household_power_consumption.txt",sep=";", stringsAsFactors = FALSE,na.strings="?")
rows<-which(df$Date=="1/2/2007"|df$Date=="2/2/2007")
subdf<-df[rows,]
subdf$Date <- as.Date(subdf$Date, format="%d/%m/%Y")
head(subdf)
datetime <- paste(subdf$Date, subdf$Time) 
subdf$Datetime <- as.POSIXct(datetime) 
m1 <- subdf$Sub_metering_1
m2 <- subdf$Sub_metering_2
m3 <- subdf$Sub_metering_3 
png(filename = "plot3.png", width = 480, height = 480,units = "px") 
plot(subdf$Datetime,m1, type="l", ylab="Energy Submetering", xlab="") 
lines(subdf$Datetime,m2, type="l", col = "red") 
lines(subdf$Datetime,m3, type="l", col = "blue") 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue")) 
dev.off() 





png(file ="plot2.png",height=480, width=480,units = "px")
plot(subdf$Datetime,subdf$Global_active_power,type="l",xlab=" ",ylab="Global Active Power (kilowatts)")
dev.off()
