## In Class Confidence Intervals
## Lina Clifford

# calculate critical values for 90% CI of standard normal distribution
qnorm(c(0.05, 0.95))

# calculate critical values for df = 10 for 95%
?qt
qt(p = c(0.025, 0.975), df = 10)

# how many degrees freedom required for -.025% lower critical value to match 
# the 0.025% lower critical z value within one decimal place
qnorm(c(0.025, 0.975))
qt(p = c(0.025, 0.975), df = 15000)


# question 5
tval = qt(p = c(0.025, 0.975), df = 49)
sse_50 = 3.14 / sqrt(50)
CIrad = tval * sse_50
print(CIrad)
CI = 10 + CIrad 
print(CI)
