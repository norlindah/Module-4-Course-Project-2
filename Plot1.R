# Q1: Have total emissions from PM2.5 decreased in United States from 1999 to 2008?

## Read file
if(!exists("NEI")){
  NEI <- readRDS("summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("Source_Classification_Code.rds")
}

# Aggregate emission thru year in NEI
totalemission <- aggregate(Emissions ~ year, NEI, sum)
  
png('plot1.png')
xx <- barplot((totalemission$Emissions)/1000, names.arg=totalemission$year, xlab="Years", ylab=("PM2.5 Emissions In Kilotons"),main=("Total PM2.5 Emissions From All US Sources"))

text(x = xx, y = round(totalemission$Emissions/1000,2), label = round(totalemission$Emissions/1000,2), pos = 1, cex = 0.8, col = "blue")
dev.off()  
 
