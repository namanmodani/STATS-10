# STATS 10 - W22
# Lab 1 Section 1
# Naman Modani

# 1A

heights <- c(72, 64, 66)
heights

# 1B

names <- c("Naman", "Vineeta", "Vidhi")
names

# 1C

cbind(heights, names)
class(cbind(heights, names))
# cbind combines two vectors as columns into one data object. Additionally, each value in the data object is converted to a character. For instance, 72 becomes "72". 
# The class of the new object is a matrix.

# 2A

NCbirths <- read.csv("births.csv")

# 2B

head(NCbirths)

# 3A

install.packages("maps")
find.package("maps")

# 3B

library(maps)
map("state")

# 4A

weights <- NCbirths$weight 
weights

# 4B
# The weights are in ounces.

# 4C

# 1 pound = 16 oz
weights_in_pounds <- weights / 16

# 4D

weights_in_pounds[1:20]
