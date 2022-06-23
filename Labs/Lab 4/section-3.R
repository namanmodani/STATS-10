# STATS 10 - W22
# Lab 4 Section 3
# Naman Modani

# 3A

pawnee <- read.csv("pawnee.csv")
n <- 30 # The sample size
N <- 541 # The population size
M <- 1000 # Number of samples/repetitions
xbars <- numeric(M) 
set.seed(123)
for(i in seq_len(M))
{
  index <- sample(N, size = n)
  sample_i <- pawnee[index, ]
  xbars[i] <- mean(sample_i$Arsenic)
}

# 3B

## Method 1
library(mosaic)
histogram(xbars, fit = "normal")

## Method 2
hist(xbars, prob = TRUE)
curve(dnorm(x, mean(xbars), sd(xbars)), add = TRUE)

# 3C

## The obtained histogram is not approximately normal. It is neither unimodal nor symmetric, and the left tail is missing.
## The discrepancy between this histogram and the one obtained in 2C is because:
## 1. Sample size (30) is too small.
## 2. Over 50% of the pawnee data has Arsenic level = 0.
## 3. There are many extreme outliers, especially the five data points around/above 100.
