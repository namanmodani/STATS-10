# STATS 10 - W22
# Lab 1 Section 2
# Naman Modani

summary(NCbirths$weight)
max(NCbirths$weight)

library(mosaicCore)
tally(NCbirths$Racemom)

# 1

mean(weights_in_pounds)

# 2

library(mosaicCore)
?tally
tally(NCbirths$Habit, format = "percent")
# 9.38755% of mothers smoke.

# 3

21 - 9.38755
# The percentage in problem 2 is 11.61245% far off from CDC's report.