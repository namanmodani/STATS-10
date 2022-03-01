# STATS 10 - W22
# Lab 4 Section 2
# Naman Modani

# 2A

pawnee <- read.csv("pawnee.csv")
# We first create objects for common quantities we will use for this exercise.
n <- 30 # The sample size
N <- 541 # The population size
M <- 1000 # Number of samples/repetitions
# Create vectors to store the simulated proportions from each repetition.
phats <- numeric(M) # for sample proportions
# Set the seed for reproduceability
set.seed(123)
# Always set the seed OUTSIDE the for loop.
# Now we start the loop. Let i cycle over the numbers 1 to 1000 (i.e., iterate 1000 times).
for(i in seq_len(M))
{
  # The i-th iteration of the for loop represents a single repetition.
  # Take a simple random sample of size n from the population of size N.
  index <- sample(N, size = n)
  # Save the random sample in the sample_i vector.
  sample_i <- pawnee[index, ]
  # Compute the proportion of the i-th sample of households with a new health issue.
  phats[i] <- mean(sample_i$New_hlth_issue == "Y")
}

## Method 1
library(mosaic)
histogram(phats, fit = "normal")

## Method 2
hist(phats, prob = TRUE)
curve(dnorm(x, mean(phats), sd(phats)), add = TRUE)

# 2B

mean(phats)
sd(phats)

# 2C

## Yes, the histogram is approximately normal. The normal curve is roughly bell-shaped. 
## The histogram is unimodal and symmetric around the center.

# 2D

p_true = mean(pawnee$New_hlth_issue == "Y")
p_true  
abs(p_true - mean(phats))  

sd_true = sqrt((p_true) * (1 - p_true) / n) 
sd_true
abs(sd_true - sd(phats))
