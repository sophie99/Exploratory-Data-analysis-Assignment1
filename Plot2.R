##Plot2

setwd("~/R/Exploratory Data analysis")
df<-read.csv("~/R/Exploratory Data analysis/household_power_consumption.txt",sep=";", stringsAsFactors = FALSE,na.strings="?")
rows<-which(df$Date=="1/2/2007"|df$Date=="2/2/2007")
subdf<-df[rows,]
subdf$Date <- as.Date(subdf$Date, format="%d/%m/%Y")
head(subdf)
datetime <- paste(subdf$Date, subdf$Time) 
subdf$Datetime <- as.POSIXct(datetime) 
png(file ="plot2.png",height=480, width=480,units = "px")
plot(subdf$Datetime,subdf$Global_active_power,type="l",xlab=" ",ylab="Global Active Power (kilowatts)")
dev.off()
