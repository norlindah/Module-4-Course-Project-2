# Q3: Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) 
#     variable, which of these four sources have seen decreases in emissions from 1999-2008 for Baltimore City? 
#     Which have seen increases in emissions from 1999-2008? 

## Read file
if(!exists("NEI")){
  NEI <- readRDS("summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("Source_Classification_Code.rds")
}

library(ggplot2)

png('plot3.png')
NEIBaltimore <- NEI[NEI$fips=="24510",]
balt.sources <- aggregate(NEIBaltimore[c("Emissions")], list(type = NEIBaltimore$type, year = NEIBaltimore$year), sum)
qplot(year, Emissions, data = balt.sources, color = type, geom= "line")+ ggtitle("PM2.5 Emissions in Baltimore County by Source Type") + xlab("Year") + ylab("PM2.5 Emissions In Tons")
dev.off()
