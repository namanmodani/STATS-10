# STATS 10 - W22
# Lab 2 Section 1
# Naman Modani

# 1A

flint <- read.csv('flint.csv')
flint <- read.csv('/home/modani/GitHub/STATS-10/Labs/Lab 2/flint.csv')

# 1B

## Method 1: Direct Calculation
mean(flint$Pb >= 15)

## Method 2: Creating an object for the logical vector
is_greater <- flint$Pb >= 15
mean(is_greater)

# 1C

## Method 1
mean(flint$Cu[flint$Region == "North"])

## Method 2
flint_north <- flint[flint$Region == "North", ]
mean(flint_north$Cu)

# 1D

## Method 1
mean(flint$Cu[flint$Pb >= 15])

## Method 2
flint_dangerous <- flint[flint$Pb >= 15, ]
mean(flint_dangerous$Cu)

# 1E

mean(flint$Pb)
mean(flint$Cu)

# 1F
boxplot(flint$Pb, main = "Boxplot of Lead Levels from Flint")

# 1G

## No, the mean does not seem to be a good measure for the center of the data. since the data is skewed.
## The median would be a better measure of central tendency.

median(flint$Pb)