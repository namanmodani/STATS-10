# STATS 10 - W22
# Lab 1 Section 4
# Naman Modani

library("mosaic")

tally(~Habit | MomPriorCond, data = NCbirths, format = "proportion")

# 1

# Since smoking can affect the structure of DNA strands, birth defects are associated with smoking.
tally(~Habit | BirthDef, data = NCbirths, format = "proportion")
# As evidenced by the two-way table, 90.692969% of children with no birth defects were conceived by a non-smoker, whereas a meager 9.307031% of defect-free children had smoker moms. 
# Due to a significant difference in the aforementioned statistics, we can associate this variable with smoking.