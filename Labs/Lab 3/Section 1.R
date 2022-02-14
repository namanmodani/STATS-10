# STATS 10 - W22
# Lab 3 Section 1
# Naman Modani

# Introduction

## Run the linear model of weight against Mom's age and print a summary 
linear_model <- lm(NCbirths$weight ~ NCbirths$Mage) 
summary(linear_model) 

## Create a plot of the data, and draw the regression line using abline 
plot(NCbirths$weight ~ NCbirths$Mage, xlab = "Mom Age", ylab = "Weight", 
     main = "Regression of Weight on Mother's Age") 
abline(linear_model, col = "red", lwd = 2) 

## Create a plot of the residuals to assess regression assumptions 
plot(linear_model$residuals ~ NCbirths$Mage, main = "Residuals plot") 
## Add a line of y = 0 to help visualize the residuals 
abline(a = 0, b = 0, col = "red", lwd = 2) 

# 1A

soil <- read.table("soil_complete.txt", header = TRUE)
soil_model <- lm(soil$lead ~ soil$zinc)
summary(soil_model)

# 1B

plot(soil$lead ~ soil$zinc, 
     xlab = "Zinc Concentration", ylab = "Lead Concentration", 
     main = "Regression of Lead concentration on Zinc concentration")
abline(soil_model, col = "red", lwd = 2)

# 1C
plot(soil_model$residuals ~ soil$zinc,
     main = "Residuals plot")
abline(a = 0, b = 0, col = "red", lwd = 2)

# 1D

## Lead Concentration = 16.582928 + 0.291335 * Zinc Concentration

# 1E

16.582928 + 0.291335 * 1000

# 1F

zinc_A = 100 + zinc_B
lead_A - lead_B = (16.582928 + 0.291335 * zinc_A) - (16.582928 + 0.291335 * zinc_B)
                = 0.291335 * (zinc_A - zinc_B)
                = 0.291335 * 100
                = 29.1335

# 1G

## R-squared is 0.912. This means that 91.2% of the variation in lead 
## concentration can be explained by the zinc concentration.

# 1H

## Linearity Assumption: Since most of the data is close to the regression
## line, the linearity assumption holds good.

## Symmetry Assumption: Albeit fairly subjective, the symmetry is good since 
## roughly the same # of positive and negative residuals are on both sides of the 
## line.

## Variance Assumption: Clearly violated, since the x-value is directly 
## proportional to variance. As we traverse along the x-axis, we see an increase
## in residual variance.
