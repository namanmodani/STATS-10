# STATS 10 - W22
# Lab 3 Section 3
# Naman Modani

# 3A

## Cases where money is doubled: [8 cases]
## (1, 6), (6, 1), (2, 5), (5, 2), (3, 4), (4, 3), (5, 6), (6, 5)
## 
## Cases where money is lost: [4 cases]
## (1, 1), (1, 2), (2, 1), (6, 6)
## 
## Total cases: [36 cases]
## (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6)
## (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6)
## (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6)
## (4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6)
## (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6)
## (6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6)
## 
## Therefore, P(doubling money in first round): 8/36 = 2/9
## P(losing money in the first round) = 4/36 = 1/9

# 3B

set.seed(123)
numbers = 1:6
rand_draws = replicate(5000, sample(numbers, 2, replace = TRUE))
crap_sum = colSums(rand_draws)
barplot(table(crap_sum))

# 3C

## Method 1
table(crap_sum)
(826 + 268) / 5000
(141 + 314 + 131) / 5000
## Method 2
mean(crap_sum == 7 | crap_sum == 11)
mean(crap_sum == 2 | crap_sum == 3 | crap_sum == 12)

# 3D

## Since winning money and losing money cannot happen simultaneously for Adam, 
## the aforementioned events are disjoint.

## Two events are independent if P(B|A) = P(B). 
## Here, P(B|A) = 0, while P(B) > 0. Since P(B|A) != P(B), these two events are 
## not independent.

# 3E

## If two events are independent, P(A and B) = P(A) * P(B) 
## P(A and B) = 0
## P(A) * P(B) = 2/9 * 1/9 = 2/81
## P(A and B) != P(A) * P(B)
## Therefore, these two events are not independent.
