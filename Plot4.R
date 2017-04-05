# Q4: Across the United States, how have emissions from coal 
#     combustion-related sources changed from 1999-2008? 

## Read file
if(!exists("NEI")){
  NEI <- readRDS("summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("Source_Classification_Code.rds")
}
# Merge file NEI, SCC
if(!exists("m_NEISCC")){
  m_NEISCC <- merge(NEI, SCC, by="SCC")
}

library(ggplot2)

# fetch all m_NEISCC records with Short.Name "coal"
NEISCCMatches  <- grepl("coal", m_NEISCC$Short.Name, ignore.case=TRUE)
subNEISCC <- m_NEISCC[NEISCCMatches, ]

AggrEmission <- aggregate(Emissions ~ year, subNEISCC, sum)

png("plot4.png", width=640, height=480)
g <- ggplot(AggrEmission, aes(factor(year), round(Emissions/1000,2), fill = year, label = round(Emissions/1000,2)))
g <- g + geom_bar(stat="identity", width=0.75) + 
  theme_bw() +  guides(fill=FALSE) +
  labs(x="Year", y=expression("Total PM"[2.5]*" Emission In Kilotons)")) + 
  ggtitle("Coal Combustion Source Emissions Across US from 1999 to 2008")+
  geom_label(aes(fill = year), colour = "white", fontface = "bold")

print(g)
dev.off()
