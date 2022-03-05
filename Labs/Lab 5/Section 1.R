# STATS 10 - W22
# Lab 5 Section 1
# Naman Modani

# 1A

flint <- read.csv("flint_2015.csv", header = TRUE)

## H0: p = 0.1
## H1: p > 0.1
## Since we have a greater than/less than sign, the hypothesis is one-sided.

# 1B

p_hat <- mean(flint$Pb >= 15)
p_hat
n <- nrow(flint)
sqrt(p_hat * (1 - p_hat) / n)

# 1C
p0 = 0.1
se = sqrt(p0 * (1 - p0) / n)
se
z_stat = (p_hat - p0) / se
z_stat
