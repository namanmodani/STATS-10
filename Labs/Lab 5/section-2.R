# STATS 10 - W22
# Lab 5 Section 2
# Naman Modani

# 2A

## H_0: p_1 = p_2
## H_a: p_1 != p_2 
## Since p1 != p2, this test is two sided.

# 2B

flint <- read.csv("flint_2015.csv", header = TRUE)

flint_north <- flint[flint$Region == "North", ]
flint_south <- flint[flint$Region == "South", ]

n1 = nrow(flint_north)
n2 = nrow(flint_south)

x_north = sum(flint_north$Pb >= 15)
x_south = sum(flint_south$Pb >= 15)

p1_hat = x_north/n1
p2_hat = x_south/n2

phat = (x_north + x_south)/(n1 + n2)

se = sqrt(phat * (1 - phat) * (1/n1 + 1/n2))

z_stat = (p1_hat - p2_hat)/se
z_stat

# 2C

## P(|Z| >= |z_score|) = 2 * P(Z > z_stat)
2 * pnorm(z_stat, lower.tail = FALSE)

# 2D

## p_value < 0.05 - reject null. We are in favor of alternative, which means
## that the proportion of dangerous lead levels in the North region differs 
## from the proportion of dangerous lead levels in the South region.

# 2E

library(mosaic)
prop.test(x = c(x_north, x_south), n = c(n1, n2), alternative = "two.sided")
## p-value = 0.0005781 < 0.05, reject null. Results don't change.
