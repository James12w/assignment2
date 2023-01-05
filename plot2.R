setwd("C:/Users/50568/Desktop")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
BaltimoreCity <- subset(NEI, fips == "24510")
totalPM25ofBCByYear <- tapply(BaltimoreCity$Emissions, BaltimoreCity$year, sum)
plot(names(totalPM25ofBCByYear), totalPM25ofBCByYear, type = "l", xlab = "Year", 
     ylab = expression("Total" ~ PM[2.5] ~ "Emissions"), 
     main = expression("Total Baltimore City" ~ PM[2.5] ~ "Emissions by Year"))
dev.copy(device = png, filename = 'plot2.png', width = 500, height = 400)
dev.off ()
