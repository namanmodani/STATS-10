# STATS 10 - W22
# Lab 1 Section 6
# Naman Modani

library("mosaic")

a <- read.table("http://www.stat.ucla.edu/~nchristo/statistics12/ozone.txt", header = TRUE)
library(maps)

AQI_colors <- c("purple", "grey", "skyblue", "orange", "black")
AQI_levels <- cut(a$o3, c(0, 0.06, 0.075, 0.104, 0.115, 0.374))

plot(a$x,a$y, xlim = c(-125,-114),ylim = c(32,43), xlab = "Longitude",
     ylab = "Latitude", main = "Ozone locations in California", "n")
map("county", "ca",add = TRUE)
points(a$x, a$y, cex = a$o3/mean(a$o3),
       col = AQI_colors[as.numeric(AQI_levels)], pch = 16)