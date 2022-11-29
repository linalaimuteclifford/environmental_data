## In Class Data Exploration 2, 9/27/2022
## Eco Buddies Again!

#load in Here
install.packages("here")

# set working directory
setwd("C:/Users/linac/OneDrive - University of Massachusetts/Courses/Fall2022/environmental_data")


# Get data into R
require(here)

dat_habitat = read.csv(here("data", "hab.sta.csv"))
  
dat_birds = read.csv(
    here("data", "bird.sta.csv")
)

# create pair plot
pairs(dat_habitat[, c("lat", "long", "slope")])

#create histogram
hist(dat_birds$BCCH, xlab = "Number of birds counted", breaks = 0:7 - 0.5)
