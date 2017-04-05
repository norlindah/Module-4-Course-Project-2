# Q5: How have emissions from motor vehicle sources changed 
#     from 1999-2008 in Baltimore City? 

## Read file
if(!exists("NEI")){
  NEI <- readRDS("summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("Source_Classification_Code.rds")
}

library(dplyr)
library(ggplot2)

#Emission in Baltimore City (flips == 24510) and type on-road vehicle
NEIBaltimore <- NEI[NEI$fips==24510 & (NEI$type=="ON-ROAD"),]
NEIBaltimore_byyear <- summarise(group_by(NEIBaltimore, year), Emissions=sum(Emissions))

png("plot5.png", width=840, height=480)
g <- ggplot(NEIBaltimore_byyear,aes(x=factor(year),y=round(Emissions,2), fill=year, label = round(Emissions,2))) 
g <- g +  geom_bar(stat="identity", width=0.75) +
  theme_bw() +  guides(fill=FALSE) +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission in Tons")) +
  ggtitle("Motor Vehicle Source Emissions in Baltimore from 1999-2008")+
  geom_label(aes(fill = year), colour = "white", fontface = "bold")

print(g)
dev.off()

