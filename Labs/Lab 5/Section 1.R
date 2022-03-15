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

# 1D

1 - pnorm(z_stat)
pnorm(z_stat, lower.tail = FALSE)

# 1E

## Yes, we reject the null hypothesis since the p-value is lower than the
## significance level.

# 1F

## The EPA should take remediation action immediately since greater than 10% 
## of households in Flint contain dangerous lead levels. Since we reject the 
## null hypothesis, we are in favor of the alternate hypothesis.

# 1G

library(mosaic)
prop.test(x = sum(flint$Pb >= 15), n = nrow(flint), p = 0.1, alt = "greater")

## The p-value is 0.03778.
## No, the results do not change. This is because we still reject the null
## hypothesis, since the p-value 0.03778 < 0.05.

# 1H

prop.test(x = sum(flint$Pb >= 15), n = nrow(flint), p = 0.1, 
          alt = "greater", conf.level = 0.99)

## The 99% confidence level is (0.09376523, 1.00000000]
