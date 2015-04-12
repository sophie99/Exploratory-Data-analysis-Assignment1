##Plot1
setwd("~/R/Exploratory Data analysis")
df<-read.csv("~/R/Exploratory Data analysis/household_power_consumption.txt",sep=";", stringsAsFactors = FALSE)
rows<-which(df$Date=="1/2/2007"|df$Date=="2/2/2007")
subdf<-df[rows,]
P1<-as.numeric(subdf$Global_active_power)
png(file = "plot1.png",height=480, width=480,units = "px")
hist(P1,main="Global Active Power",col="red",ylab="Frequency",xlab="Global Active Power (kilowatts)") 
dev.off()
