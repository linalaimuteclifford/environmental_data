#Lina Clifford
#In Class Liklihood
#Analysis of Environmental Data

#Set working directory
setwd("C:/Users/linac/OneDrive - University of Massachusetts/Courses/Fall2022/environmental_data/data")

#Load in data
bird.sta <- read.csv("bird.sta.csv", header = TRUE, sep = ",")
hab.sta <- read.csv("hab.sta.csv", header = TRUE, sep = ",")

#example
x_observed = c(2, 6)
print(x_observed)

#calculate probability mass for two counts given Poisson distrib
dpois(x = 2, lambda = 4.5)

dpois(x = 6, lambda = 4.5)

#likelihood of observing those particular counts together is the product of individual liklihoods
dpois(x = 2, lambda = 4.5) * dpois(x = 6, lambda = 4.5)

#take advantage of vectorization in R by storing counts in a single vector
wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 4.5)

#can easily calculate product now
prod(dpois(x = wiwa_counts, lambda = 4.5))

#sum of log-liklihoods 
sum(log(dpois(x = wiwa_counts, lambda = 4.5)))

#load in bird data
dat_bird = read.csv(here::here("data", "bird.sta.csv"))
dat_habitat = read.csv(here::here("data", "hab.sta.csv"))
dat_all = merge(dat_bird, dat_habitat)

#summary of bird data
summary(dat_all$WIWA)

#historgram of WIWA
hist(dat_all$WIWA)

#introduce custom breaks in histogram
hist(dat_all$WIWA, breaks = 7)
hist(dat_all$WIWA, breaks = 0:7)
hist(dat_all$WIWA, breaks = 0:7 - .5)

#histograms w discrete count data
par(mfrow = c(1, 2))
dat = dat_all$WIWA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nWilson's Warbler counts")

dat = dat_all$GRJA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nGray Jay counts")


#Try poisson distrib with lambda = 1
sum(log(dpois(x = dat_all$WIWA, lambda = 1.0)))

#Question 1
wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 5)

#Question 4 and 5: want closest to 0
sum(log(dpois( x = dat_all$WIWR, lambda = 1.46)))

#Question 6: 
wiwr_counts = c(2, 6) 

dbinom(x = wiwr_counts, size= 6, prob = 0.5) 

#Question 10: try summing dbinom
sum(log(dbinom(x = wiwr_counts, size= 6, prob = 0.5)))

#Question 12:
set.seed(1) 
vec_rnorm = rnorm(n = 10, mean = 0, sd = 1) 
sum(log(dnorm(vec_rnorm, mean=0, sd=1))) 

#Question 14: try to get closer to 0 than code above
vec_rnorm = rnorm(n = 10, mean = 100, sd = 25) 
sum(log(dnorm(vec_rnorm, mean=100, sd=25)))
