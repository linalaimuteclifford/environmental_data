#Lina Clifford
#Ginkgo Data Exploration
#Eco Girlies
#11/15/2022

#load in ginkgo
ginkgo <- read.csv("data/ginkgo_data_2022.csv", header = TRUE, sep = ",")

#how many trees were sampled (divide by 10 because 10 leaves per tree)
(nrow(ginkgo))/10

#how many trees had seeds
sum(ginkgo$seeds_present=="TRUE")/10 

#scatter of max leaf depth and max leaf width
plot(ginkgo$max_depth~ginkgo$max_width, xlab = "Max Depth", ylab = "Max Width")

