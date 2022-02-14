# STATS 10 - W22
# Lab 1 Section 5
# Naman Modani

library("mosaic")

plot(NCbirths$weight ~ NCbirths$Gained) 
plot(NCbirths$Gained, NCbirths$weight) 

# 1

plot(NCbirths$weight ~ NCbirths$Mage, col = "pink", cex = 2, pch = 19,
     xlab = "Mother's Age", ylab = "Baby Weight (oz.)",
     main = "Baby weight vs. Mother's Age")