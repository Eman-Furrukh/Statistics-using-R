# Advanced Statistics 
# Assignment #3
# Shamail Aamir Khan 21i-1772
# Eman Furrukh 21i-1726

                                    # Q1 Part B
# Assuming you have a vector of values
values <- c(61.2, 66.8, 67.5, 68.1, 67.6, 66.3, 63.0, 68.7, 69.4, 63.9,
             62.2, 65.5, 67.9, 67.6, 69.1, 65.4, 61.2, 60.8, 66.3, 65.1,
             63.7, 63.2, 68.4, 63.6, 64.3)

# Compute and print Standard Error (SE)
n <- length(values)
mean <- mean(values)
std_dev <- sd(values)

std_error <- std_dev / sqrt(n)
print(paste("Standard Error:", std_error))

# Compute and print upper bound (UB) and lower bound (LB)
confidence_level <- 0.95  # You can adjust the confidence level as needed

z_score <- qnorm((1 + confidence_level) / 2)  
margin_of_error <- z_score * std_error

lower <- mean - margin_of_error
upper <- mean + margin_of_error

print(paste("Lower Bound:", lower))
print(paste("Upper Bound:", upper))

                                    # Q2 Part B

# Compute and print Standard Error (SE)
n <- 500
p <- 350 / n

std_error <- sqrt((p * (1 - p)) / n)
print(paste("Standard Error:", std_error))

confidence_level <- 0.95  

z_score <- qnorm((1 + confidence_level) / 2)  
margin_of_error <- z_score * standard_error

Lower <- p - margin_of_error
Upper <- p + margin_of_error

print(paste("Lower Bound:", Lower))
print(paste("Upper Bound:", Upper))
