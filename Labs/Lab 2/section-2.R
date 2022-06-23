# STATS 10 - W22
# Lab 2 Section 2
# Naman Modani

life <- read.table("http://www.stat.ucla.edu/~nchristo/statistics12/countries_life.txt",
                   header = TRUE) 
# 2A

plot (life$Life ~ life$Income, 
      xlab = "Income", ylab = "Life Expectancies", 
      main = "Life Expectancies vs. Income")

# 2B

boxplot(life$Income, main = "Boxplot of Income")

## Method 1: hist
hist(life$Income, xlab = "Income", main = "Histogram of Income")
## Method 2: Histogram (via Mosaic)
library(mosaic)
Histogram(life$Income, xlab = "Income", main = "Histogram of Income")

## Yes, there are outliers.

# 2C

income_below <- life[life$Income < 1000, ]
income_after <- life[life$Income >= 1000, ]

below <- life$Income < 1000
income_below <- life[below, ]

# 2D

plot(income_below$Life ~ income_below$Income, 
     xlab = "Income", ylab = "Life Expectancies",
     main = "Life Expectancies vs. Income for Income below $1000")

cor(income_below$Life, income_below$Income)