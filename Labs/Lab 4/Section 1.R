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

dbinom(145, size = n, prob = p)

# 1D

pbinom(175, size = n, prob = p) - pbinom(124, size = n, prob = p)

# 1E

## Method 1
1 - pnorm(230, mean = 200, sd = 20)

## Method 2
pnorm(230, mean = 200, sd = 20, lower.tail = FALSE)
