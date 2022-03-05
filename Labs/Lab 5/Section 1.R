# STATS 10 - W22
# Lab 5 Section 1
# Naman Modani

# 5A

flint <- read.csv("flint_2015.csv", header = TRUE)

## H0: p = 0.1
## H1: p > 0.1
## Since we have a greater than/less than sign, the hypothesis is one-sided.

# 5B

p_hat <- mean(flint$Pb >= 15)
p_hat
