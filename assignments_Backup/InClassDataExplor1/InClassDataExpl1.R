install.packages("palmerpenguins")
install.packages("here")
require(palmerpenguins)
require(here)
penguins = data.frame(penguins)
class(penguins)
mean(penguins$body_mass_g)
mean(penguins$body_mass_g, na.rm = TRUE)
summary(penguins)
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)
plot(penguins$body_mass_g)

#to create multiple plots in one space, mfrow means one row 2 columns
par(mfrow = c(1, 2))
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

#coplots
coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)
 

#making own plots
coplot(flipper_length_mm ~ bill_length_mm | island, data = penguins, rows =1)
