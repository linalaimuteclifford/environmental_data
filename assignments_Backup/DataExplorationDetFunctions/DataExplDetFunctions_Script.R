## Data Exploration and Deterministic Functions Assignment
## ECO 602
## Lina Clifford

# Check what is working directory
getwd()

# Install  here function
install.packages("here")

# Load in here function
library(here)

# Load in data
dat_habitat <- read.csv(here("Data", "hab.sta.csv"))

# Create histogram of elevation
hist(dat_habitat$elev, 
     main = "Histogram of sampling site elevation", 
     xlab = "Elevation", 
     ylab = "Frequency",
     xlim = c(0,900),
     ylim = c(0, 200))

# Create histogram of slope
hist(dat_habitat$slope, 
     main = "Histogram of sampling site slope", 
     xlab = "Slope", 
     ylab = "Frequency",
     xlim = c(0, 120),
     ylim = c(0, 200))

# Create histogram of aspect
hist(dat_habitat$aspect, 
     main = "Histogram of sampling site aspect", 
     xlab = "Aspect", 
     ylab = "Frequency",
     xlim = c(0, 400),
     ylim = c(0,200))

# Plot all three historgrams in one figure
par(mfrow=c(3,1))
hist(dat_habitat$elev, 
     main = "Histogram of sampling site elevation", 
     xlab = "Elevation", 
     ylab = "Frequency",
     xlim = c(0,900),
     ylim = c(0, 200))
hist(dat_habitat$slope, 
     main = "Histogram of sampling site slope", 
     xlab = "Slope", 
     ylab = "Frequency",
     xlim = c(0, 120),
     ylim = c(0, 200))
hist(dat_habitat$aspect, 
     main = "Histogram of sampling site aspect", 
     xlab = "Aspect", 
     ylab = "Frequency",
     xlim = c(0, 400),
     ylim = c(0,200))
#Create scatter plots of total basal area with terrain variables:
par(mfrow = c(2,3))
plot(dat_habitat$elev, dat_habitat$ba.tot, xlab = "Elevation", ylab = "Total Basal Area", cex = 0.1)
plot(dat_habitat$slope, dat_habitat$ba.tot, xlab = "Slope", ylab = "Total Basal Area", cex = 0.1)
plot(dat_habitat$aspect, dat_habitat$ba.tot, xlab = "Aspect", ylab = "Total Basal Area", cex = 0.1)
hist(dat_habitat$elev, 
     main = "Elevation", 
     xlab = "Elevation", 
     ylab = "Frequency",
     xlim = c(0,900),
     ylim = c(0, 200))
hist(dat_habitat$slope, 
     main = "Slope", 
     xlab = "Slope", 
     ylab = "Frequency",
     xlim = c(0, 120),
     ylim = c(0, 200))
hist(dat_habitat$aspect, 
     main = "Aspect", 
     xlab = "Aspect", 
     ylab = "Frequency",
     xlim = c(0, 400),
     ylim = c(0,200))

#Fitting lines to scatter elevation

line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}
par(mfrow = c(2,3))
plot(dat_habitat$elev, dat_habitat$ba.tot, xlab = "Elevation", ylab = "Total Basal Area", cex = 0.1)
data_center_x_elev = mean(dat_habitat$elev)
data_center_y_elev = mean(dat_habitat$ba.tot)
c(data_center_x_elev, data_center_y_elev)
curve(line_point_slope(x, data_center_x_elev, data_center_y_elev, -0.1), add = TRUE, col = "green")
plot(dat_habitat$slope, dat_habitat$ba.tot, xlab = "Slope", ylab = "Total Basal Area", cex = 0.1)
data_center_x_slope = mean(dat_habitat$slope)
data_center_y_slope = mean(dat_habitat$ba.tot)
c(data_center_x_slope, data_center_y_slope)
curve(line_point_slope(x, data_center_x_slope, data_center_y_slope, 0.3), add = TRUE, col = "red")
plot(dat_habitat$aspect, dat_habitat$ba.tot, xlab = "Aspect", ylab = "Total Basal Area", cex = 0.1)
data_center_x_aspect = mean(dat_habitat$aspect)
data_center_y_aspect = mean(dat_habitat$ba.tot)
c(data_center_x_aspect, data_center_y_aspect)
curve(line_point_slope(x, data_center_x_aspect, data_center_y_aspect, 0.1), add = TRUE, col = "blue")
hist(dat_habitat$elev, 
     main = "Elevation", 
     xlab = "Elevation", 
     ylab = "Frequency",
     xlim = c(0,900),
     ylim = c(0, 200))
hist(dat_habitat$slope, 
     main = "Slope", 
     xlab = "Slope", 
     ylab = "Frequency",
     xlim = c(0, 120),
     ylim = c(0, 200))
hist(dat_habitat$aspect, 
     main = "Aspect", 
     xlab = "Aspect", 
     ylab = "Frequency",
     xlim = c(0, 400),
     ylim = c(0,200))