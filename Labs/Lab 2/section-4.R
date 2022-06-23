# STATS 10 - W22
# Lab 2 Section 4
# Naman Modani

LA <- read.table("http://www.stat.ucla.edu/~nchristo/statistics12/la_data.txt", header = TRUE) 

# 4A

library(maps)
plot(LA$Longitude, LA$Latitude, 
     xlab = "Longitude", ylab = "Latitude",
     main = "Plot of Neighborhoods in LA County",
     xlim = c(-119, -117.5))
map("county", "california", add = TRUE)

# 4B

## Creating a logical statement to exclude data with schools = 0
above0 <- LA$Schools > 0

## Creating objects for plots using subsetting with logical statement
schools_above0 <- LA$Schools[above0]
income_above0 <- LA$Income[above0]

## Creating the scatterplot
plot(schools_above0 ~ income_above0, 
     xlab = "Income", ylab = "School Performance",
     main = "School Performance vs. Income")

## We observe a moderately positive linear trend between school performance and income.