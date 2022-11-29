## Lina Clifford
## ECO 602 Environmental Data Analysis
## Frequentist Concepts Assignment
## Due 10/23/2022

#Q1: Probability of observing count of exactly 3 successes in binomial distribution with n =4 p = 0.75
dbinom(3, 4, 0.75)

#Q2: Probability of observing count of 3 successes or fewer, binomial distribution  = 4 and p = 0.75
pbinom(q = 3, size = 4, prob = 0.75, log.p = FALSE)

#Q3: Probability observing more than 3 successes in binomial distribution with n=5, p =0.75
1 - (pbinom(q = 3, size = 5, prob = 0.75, log.p = FALSE))

#Q4: Prob of observing value less than 1.2 from norm distrib mean = 2 and SD  = 23
pnorm(1.2, mean = 2, sd =2)

#Q5: Prob of observing value greater than 1.2 from norm distrib mean = 2 and SD  = 23
1 - pnorm(1.2, mean = 2, sd =2)

#Q6: Prob observing value between 1.2 and 3.2 norm distrib with mean of 2 and SD of 2
(1 - pnorm(1.2, mean = 2, sd =2)) - (1 - pnorm(3.2, mean = 2, sd =2))

#Q12: How many 3 character words are possible library of babel
25*25*25

410*40*81
1328400/1312000
1.0125 * 1312000
B= 25^1312000
A =25^1328400
A/B
1328400 - 1312000
