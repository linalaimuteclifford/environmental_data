## Lina Clifford
## ECO 602 - Analysis of Environmental Data
## Using Models 2 Assignment
## Due 12/4/2022

# Get Palmer penguins data
require(palmerpenguins)

# t test Gentoo flipper lengths
t.test(subset(penguins, species == "Gentoo")$flipper_length_mm)

# try t test again, test if flip length is equal to 218
t.test(
  x = subset(penguins, species == "Gentoo")$flipper_length_mm,
  mu = 218
)

# one tailed t test that flip length smaller than 218
t.test(
  x = subset(penguins, species == "Gentoo")$flipper_length_mm,
  mu = 218,
  alternative = "less"
)

# 2 sample t test, flip length two species
t.test(flipper_length_mm ~ species, data = subset(penguins, species != "Chinstrap"))

# one way ANOVA: graphical exploration using histograms and density plots
par(mfrow = c(1, 2))
hist(penguins$body_mass_g, breaks = 80, main = "histogram of body mass", xlab = "body mass (g)")
plot(density(penguins$body_mass_g, na.rm = TRUE), main = "density plot of body mass")

# Q1. Recreate conditional boxplot for sex and species predictor variables
require(palmerpenguins)
boxplotlabels = c("female\nAdelie", "male\nAdelie", "female\nChinstrap", "male\nChinstrap", "female\nGentoo", "male\nGentoo")
par(mfrow = c(1, 1))
boxplot(body_mass_g ~ sex*species, data = penguins, ylab = "Body Mass (grams)", xlab = "Species and Sex", names = boxplotlabels, las = 1)

# conditional boxplot for mass and species
require(palmerpenguins)
boxplot(body_mass_g ~ species, data = penguins)

# numerical exploration -- test normality assumption!
# extract measurements for each species
dat_chinstrap = subset(penguins, species == "Chinstrap")
dat_gentoo = subset(penguins, species == "Gentoo")
dat_adelie = subset(penguins, species == "Adelie")

#calculate mean body mass each species
mean(dat_chinstrap$body_mass_g, na.rm = TRUE)
mean(dat_gentoo$body_mass_g, na.rm = TRUE)
mean(dat_adelie$body_mass_g, na.rm = TRUE)

# conduct shapiro test for each species body mass
shapiro.test(dat_chinstrap$body_mass_g)
shapiro.test(dat_gentoo$body_mass_g)
shapiro.test(dat_adelie$body_mass_g)

# shortcut for calc species mean body masses using aggregate function
aggregate(body_mass_g ~ species, data = penguins, FUN = mean)



# fit linear model
fit_species = lm(body_mass_g ~ species, data = penguins)

#look at model coefficients
summary(fit_species)


# conduct ANOVA on fit_species
anova(fit_species)

#one way ANOVA, use lm function to store model in a variable
fit_species = lm(body_mass_g ~ species, data = penguins)

#look at model coefficients
summary(fit_species)

# r makes easy to conduct an ANOVA
anova(fit_species)

# 2 way ANOVA to see if sex is important to body mass
fit_additive = lm(body_mass_g ~ sex + species, data = penguins)

# 2 way interactive (factorial) ANOVA
fit_interactive = lm(body_mass_g ~ sex * species, data = penguins)
summary(fit_interactive)

# simple linear regression: penguin bills and body mass
require(palmerpenguins)
lm(bill_length_mm ~ body_mass_g, data = penguins)

#Q4. build fit_both with factorial linear model of body mass and sex, species
fit_both = lm(body_mass_g ~ sex * species, data = penguins)
summary(fit_both)

#Q8. Observed mean chinstrap female body mass?
dat_chinstrap_female = subset(dat_chinstrap, sex == "female")
mean(dat_chinstrap_female$body_mass_g)
