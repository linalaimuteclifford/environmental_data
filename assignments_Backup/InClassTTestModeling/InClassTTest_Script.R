## In Class Models 1 (T test)
## Lina Clifford

# Creat box plot
require(palmerpenguins)
dat_ade = droplevels(subset(penguins, species == "Adelie"))
hist(dat_ade$body_mass_g, main = "Adelie Penguins: Body Mass", xlab = "body mass (g)")

dat_ade = droplevels(subset(penguins, species == "Adelie")) 

dat_ade$sex <- as.factor(dat_ade$sex) 

levels(dat_ade$sex) <- c("F","M") 

boxplot(dat_ade$body_mass_g ~ dat_ade$sex, 
        main = "Boxplots of Penguin Body Mass by Sex", 
        ylab = "Body mass (g)", 
        xlab = "Sex") 
# Question 2: t test
#Subset male and female
femalepen=subset(dat_ade,sex== "F" ) 
t.test(femalepen$body_mass_g, y = NULL, alternative = "greater", mu = 0, paired = FALSE, var.equal = FALSE)


#Question 4: t test with male
malepen=subset(dat_ade,sex== "M" ) 
t.test(malepen$body_mass_g, y = NULL, alternative = "greater", mu = 4000, paired = FALSE, var.equal = FALSE)

#Question 6: male and female penguins
t.test(femalepen$body_mass_g, malepen$body_mass_g) 

#Question 8: males and females directional
t.test(malepen$body_mass_g, femalepen$body_mass_g, alternative = "greater", paired = TRUE, var.equal = FALSE)

