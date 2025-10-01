## Set directory
setwd("C:\\Users\\loch2\\Desktop\\IT24100314")
getwd()

## Exercise:

## Parameters
mean_time <- 45
sd_time <- 2
sample_size <- 25


## i. Generate a random sample of size 25 for the baking time.
set.seed(123)
sample_data <- rnorm(sample_size, mean = mean_time, sd = sd_time)
print(sample_data)


## ii. Test whether the average baking time is less than 46 minutes at a 5% level of significance.
t_test <- t.test(sample_data, mu = 46, alternative = "less")
print(t_test)

