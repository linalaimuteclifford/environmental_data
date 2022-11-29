## In Class Models 2: Model Coefficients
# Lina Clifford
# 11/8/2022
# Environmental Data Analysis

data(iris)

#Fit the linear model of sepal length as predicted by species
fit_species = 
  lm(
    Sepal.Length ~ Species,
    data = iris)

# and the model coefficient table
summary(fit_species)


#Create conditional box plot
boxplot( 
  Sepal.Length ~ Species, 
  data = iris, 
  ylab = "Sepal Length (cm)", 
  xlab = "Species") 

# test normality of residuals
shapiro.test(residuals(fit_species))

# petal length and width model now
plot(
  Petal.Width ~ Petal.Length,
  data = iris,
  xlab = "Petal Length (cm)",
  ylab = "Petal Width (cm)")
fit_petals = 
  lm(
    Petal.Width ~ Petal.Length,
    data = iris)
summary(fit_petals)


#shaprio on fit petals
residuals(fit_petals) 

shapiro.test(residuals(fit_petals)) 
