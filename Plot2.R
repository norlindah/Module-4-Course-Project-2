# Q2: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland from 1999 to 2008?

## Read file
if(!exists("NEI")){
  NEI <- readRDS("summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("Source_Classification_Code.rds")
}

# Aggregate emission from Baltimore City
NEIBaltimore <- NEI[NEI$fips=="24510",]
AggBaltimore <- aggregate(Emissions ~ year, NEIBaltimore, sum)
  
png('plot2.png')
xx <- barplot(height = AggBaltimore$Emissions/1000, names.arg=AggBaltimore$year, xlab="Years", ylab=("PM2.5 Emissions"), ylim = c(0,4), main=("Total PM2.5 Emissions From Baltimore City, Maryland Sources"))

text(x = xx, y = round(AggBaltimore$Emissions/1000,2), label = round(AggBaltimore$Emissions/1000,2), pos = 1, cex = 0.8, col = "blue")
dev.off()  
 
