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
