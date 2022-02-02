# STATS 10 - W22
# Lab 2 Section 3
# Naman Modani

maas <- read.table("http://www.stat.ucla.edu/~nchristo/statistics12/soil.txt", header = TRUE)

# 3A

summary(maas$lead)
summary(maas$zinc)

# 3B

hist(maas$lead, xlab = "Lead Concentration", 
     main = "Histogram of Lead Concentration")
hist(log(maas$lead), xlab = "Log of Lead Concentration", 
     main = "Histogram of Log of Lead Concentration")

# 3C

plot(log(maas$lead) ~ log(maas$zinc), 
     xlab = "Log of Zinc Concentration",
     ylab = "Log of Lead Concentration",
     main = "Log of Lead vs Log of Zinc")

## There is a strong positive linear trend between the two variables - the log of lead and the log of zinc.

# 3D

soil_color <- c("blue", "orange", "red")
soil_level <- cut(maas$lead, c(0, 150, 400, 1000))

plot(maas$x, maas$y, xlab ="x", ylab = "y", main = "Plot of Surface Soil Risk", "n")
points(maas$x, maas$y, 
       col = soil_color[as.numeric(soil_level)],
       cex = maas$lead / mean(maas$lead))