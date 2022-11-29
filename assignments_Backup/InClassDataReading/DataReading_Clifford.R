#install here package
install.packages("here")

#load in Here package
require(here)

#see working directory
getwd()

#load in csv file into environment
dat_catrate = read.csv(here("data", "catrate.csv"))
dat_delmoys = read.csv(here("data", "delomys.csv"))
dat_rope = read.csv(here("data", "rope.csv"))

#see if dataframe or matrix
class(dat_catrate)
class(dat_delmoys)
class(dat_rope)

#see first few lines
head(dat_catrate)
head(dat_delmoys)
head(dat_rope)

#create plot with name
plot(dat_rope$p.cut, dat_rope$p.strength, main="Lina Clifford's Plot")

