# STATS 10 - W22
# Lab 1 Section 3
# Naman Modani

library("mosaic")

# 1

dotPlot(weights_in_pounds, cex = 6)

# 2

histogram(weights_in_pounds, breaks = 3)
histogram(weights_in_pounds, breaks = 20)
histogram(weights_in_pounds, breaks = 100)
# The histogram with 20 bins is the best, since it divides the data with breaks small enough to make the general shape of the data visible without disrupting the smoothness of the visualization.


# 3

boxplot(NCbirths$Mage, NCbirths$Fage, names = c("Mother's Age", "Father's Age"))
# Clearly, the side-by-side boxplots depict that fathers tend to be older than mothers.

# 4

histogram(~ weight | Habit, data = NCbirths, layout = c(1, 2))
# The aforementioned command creates two stacked density vs. weight histograms corresponding to two categories in the habit variable. Clearly, the central tendency is lower for smoking moms in comparison to non-smoking moms, i.e. the variability in babies of smoking moms is higher than non-smoking moms.
