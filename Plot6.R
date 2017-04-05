# Q6: Compare emissions from motor vehicle sources in Baltimore City with emissions 
#     from motor vehicle sources in Los Angeles County, California (fips == "06037"). 
#     Which city has seen greater changes over time in motor vehicle emissions? 

## Read file
if(!exists("NEI")){
  NEI <- readRDS("summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("Source_Classification_Code.rds")
}

library(dplyr)
library(ggplot2)

#Emissions from motor vehicle sources in Baltimore(flips == 24510); Los Angeles County(flips == 06037)) and type = on-road vehicle
NEIBaltimore <- summarise(group_by(filter(NEI, fips == "24510" & type =="ON-ROAD"),year), Emissions = sum(Emissions))
NEILosAngelas <- summarise(group_by(filter(NEI, fips == "06037" & type =="ON-ROAD"),year), Emissions = sum(Emissions))

#combine both cities
NEIBaltimore$City <- "Baltimore City"
NEILosAngelas$City <- "Los Angeles County"
both_CityVehicle <- rbind(NEIBaltimore, NEILosAngelas)

png("plot6.png", width=840, height=480)
g <- ggplot(both_CityVehicle,aes(x=factor(year),y=Emissions, fill=year, label = round(Emissions,2)))+ 
  geom_bar(aes(fill=year), stat="identity") +
  facet_grid(scales="free", space="free", .~City) +
  guides(fill=FALSE) + theme_bw() +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission in Tons")) + 
  labs(title=expression("Motor Vehicle Emissions in Baltimore Vs. Los Angeles City"))+
  geom_label(aes(fill = year), colour = "white", fontface = "bold")
  
print(g)
dev.off()
 