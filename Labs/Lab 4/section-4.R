# STATS 10 - W22
# Lab 4 Section 4
# Naman Modani

# 4A

pawnee <- read.csv("pawnee.csv")
head(pawnee)
dim(pawnee)

# 4B

set.seed(1337)
sample_index <- sample(541, size = 30)
pawnee_sample <- pawnee[sample_index, ]
head(pawnee_sample)

# 4C

mean(pawnee_sample$Arsenic)
mean(pawnee_sample$New_hlth_issue == "Y")

# 4D

## (x-bar) Mean Arsenic Level: x̅
## (p-hat) Proportion of Health Issues: p̂

# 4E

p_hat = mean(pawnee_sample$New_hlth_issue == "Y")
se = sqrt(p_hat * (1 - p_hat) / 30)

## 90% Confidence Interval
z_90 = qnorm(0.95)
p_hat + c(-1, 1) * z_90 * se

## 95% Confidence Interval
z_95 = qnorm(0.975)
p_hat + c(-1, 1) * z_95 * se

## 99% Confidence Interval
z_99 = qnorm(0.995)
p_hat + c(-1, 1) * z_99 * se

# 4F

## Since α (alpha) = 0, the population proportion with a 100% confidence interval would have the bounds [0, 1] (both inclusive).

# 4G

mean(pawnee$New_hlth_issue == "Y")

# 4H

## Histogram
hist(pawnee$Arsenic, breaks = 50, 
     xlab = "Arsenic Level", main = "Histogram of Arsenic Level")

## Boxplot
boxplot(pawnee$Arsenic,
        ylab = "Arsenic Level", main = "Boxplot of Arsenic Level")
