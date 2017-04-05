
<h1>Module 4 - Course Project 2</h1>

<h2>Instructions</h2>

<p>Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the EPA National Emissions Inventory web site.
</p>
<p>For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.
</p>

<h3>Review criteria</h3>

<p>For each question</p>
<p>Does the plot appear to address the question being asked?</p>
<p>Is the submitted R code appropriate for construction of the submitted plot?</p>

<h2>Data</h2>
<p>The data for this assignment are available from the course web site as a single zip file:
</p>
<p>Data for Peer Assessment [29Mb]</p>
<p>The zip file contains two files:</p>
<p>PM2.5 Emissions Data (summarySCC_PM25.rds): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.</p>

<h2>Assignment</h2>
<p>The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008. You may use any R package you want to support your analysis.</p>

<h2>Questions</h2>

<p>You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.</p>

<p>1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
</p>

<p>2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.</p>

<p>3. Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.</p>

<p>4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?</p>

<p>5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?</p>

<p>6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?</p>

<h2>Making and Submitting Plots</h2>
<h3>For each plot you should</h3>

<p>. Construct the plot and save it to a PNG file.</p>
<p>. Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file. Only include the code for a single plot (i.e. plot1.R should only include code for producing plot1.png)</p>
<p>. Upload the PNG file on the Assignment submission page</p>

