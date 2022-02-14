# STATS 10 - W22
# Lab 3 Section 2
# Naman Modani

# 2A

ice <- read.csv("sea_ice.csv", header = TRUE) 
ice$Date <- as.Date(ice$Date, "%m/%d/%Y") 

ice_model <- lm(ice$Extent ~ ice$Date)
summary(ice_model)

# 2B

plot(ice$Extent ~ ice$Date,
     xlab = "Date", ylab = "Extent",
     main = "Regression of Extent against Date")
abline(ice_model, col = "red", lwd = 2)

## Although the slope of the line is very small, it is still a positive trend.
## It also happens to be oscillating in nature.

# 2C

plot(ice_model$residuals ~ ice$Date,
     main = "Residuals plot")
abline(a = 0, b = 0, col = "red", lwd = 2)

## Linearity Assumption: Since most of the data is quite far from the regression
## line, the linearity assumption is not met.

## Symmetry Assumption: The symmetry is not met owing to the huge gap on the lower 
## side of the line.

## Variance Assumption: The variation looks good since the data points are quite randomly 
## distributed around y = 0 in this plot.
