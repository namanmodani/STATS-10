# STATS 10 - W22
# Lab 4 Section 1
# Naman Modani

# 1A

## n = 365 (days in a non-leap year)
## p = 0.4 (40% chance of rain)

# 1B

n = 365
p = 0.4

## Mean
n * p

## Standard Deviation
sqrt(n * p * (1 - p))

# 1C

## P(park will experience exactly 145 days of heavy rain in 2019)
dbinom(145, size = n, prob = p)

# 1D

## P(park will see between 125 and 175 days of heavy rain in 2019)
pbinom(175, size = n, prob = p) - pbinom(124, size = n, prob = p)

# 1E

## P(park will experience more than 230 inches of rain in 2019)

## Method 1
1 - pnorm(230, mean = 200, sd = 20)

## Method 2
pnorm(230, mean = 200, sd = 20, lower.tail = FALSE)
