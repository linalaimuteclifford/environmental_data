# Lina Clifford
# ECO 602 - Analysis of Environmental Data
# Using Models 1 Assignment
# Due 11/13/2022


#load in data
catrate <- read.csv("data/catrate.csv", header = TRUE, sep = ",")

#Look at first few row
head(catrate)

#Look at summary
summary(catrate)

#Plot histogram of cat.rate column
hist(catrate$cat.rate, main = "Histogram of Catastrophe Rates", xlab = "Catastrophe Rate", ylab = "Frequency")

#Check for normality--Shapiro Test
#First, subset just cat.rate column
cat.rate <- catrate$cat.rate

#Run shapiro test
shapiro.test(catrate$cat.rate)

#low p value means that we reject the null hypothesis, meaning cat.rate is NOT normally distributed

#t test  of the alternative hypothesis that the catastrophic rate is different from the pond late-filling rate.
t.test(catrate$cat.rate, alternative = "two.sided", mu = 2/7)

#t test with greater, one tailed
t.test(catrate$cat.rate, alternative = "greater", mu = 2/7)


#Wilcox test
wilcox.test(catrate$cat.rate, mu = 2 / 7)
?wilcox.test

#Comparing two sample means with Palmer Penguins
require(palmerpenguins)

#subset palmer penguins data
penguin_dat = droplevels(subset(penguins, species != "Gentoo"))

#summary of penguin dat
summary(penguin_dat)

#visualize flipper length in mm via boxplot
boxplot(
  flipper_length_mm ~ species, 
  data = penguin_dat,
  ylab = "Flipper Length (mm)")

# Extract the Adelie penguin data
dat_adelie = subset(penguin_dat, species == "Adelie")

#Extract chinstrap
dat_chinstrap = subset(penguin_dat, species == "Chinstrap")

#extract gentoo
dat_gentoo = subset (penguin_dat, species == "Gentoo")

#test normality of each species (turns out they're all normally distrib)
shapiro.test(dat_adelie$flipper_length_mm)
shapiro.test(dat_chinstrap$flipper_length_mm)
shapiro.test(dat_gentoo$flipper_length_mm)

#t test on penguins
t.test(dat_adelie$flipper_length_mm, y = dat_chinstrap$flipper_length_mm, alternative = "two.sided", mu = 0)

#create histograms
par(mfrow = c(1,2))
hist(dat_adelie$flipper_length_mm, main = "Histogram of Adelie Flipper Length", 
     xlab = "Flipper Length (mm)", ylab = "Frequency")
hist(dat_chinstrap$flipper_length_mm, main = "Histogram of Chinstrap Flipper Length", 
     xlab = "Flipper Length (mm)", ylab = "Frequency")