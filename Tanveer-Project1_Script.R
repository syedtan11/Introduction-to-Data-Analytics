#Name:Syed Tanveer Date:02-10-2023 Class:ALY6000
cat("\014") # clears console
rm(list = ls()) # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE)
#clears packages
options(scipen = 100) 
# disables scientific notation for entire R session
#1
123 * 453 
5^2 * 40 
TRUE & FALSE 
TRUE | FALSE 
75 %% 10 
75 / 10 
#2
first_vector <- c(17,12,-33,5)
first_vector
#3
counting_by_fives <- c(5,10,15,20,25,30,35)
counting_by_fives
#4
second_vector <- seq(from = 10, to = 30, by = 2)
second_vector
#5
counting_by_fives_with_seq <- seq(from = 5, to = 35, by = 5)
counting_by_fives_with_seq
#6
third_vector <- rep(first_vector, times = 10)
third_vector
#7
rep_vector <- rep(0,20)
rep_vector
#8
fourth_vector <- (10:1)
fourth_vector
#9
counting_vector <- (5:15)
counting_vector
#10
grades <- c(96, 100, 85, 92, 81, 72)
grades
#11
bonus_points_added <- grades+3
bonus_points_added
#12
one_to_one_hundred <- 1:100
one_to_one_hundred
#13
reverse_numbers <- seq(from = 100, to = -100, by = -3)
reverse_numbers
#14
second_vector + 20
second_vector * 20
second_vector >= 20
second_vector != 20
#15
total <- sum(one_to_one_hundred)
total
#16
average_value <- mean(one_to_one_hundred)
average_value
#17
median_value <- median(one_to_one_hundred)
median_value
#18
max_value <- max(one_to_one_hundred)
max_value
#19
min_value <- min(one_to_one_hundred)
min_value
#20
first_value <- second_vector[1]
first_value
#21
first_three_values <- second_vector[1:3]
first_three_values
#22
vector_from_brackets <- second_vector[c(1, 5, 10, 11)]
vector_from_brackets
#23
vector_from_boolean_brackets <- first_vector[c(FALSE, TRUE, FALSE, TRUE)]
vector_from_boolean_brackets
#24
second_vector >= 20
#25
ages_vector <- seq(from = 10, to = 30, by = 2)
ages_vector
#26
ages_vector[ages_vector >= 20]
#27
lowest_grades_removed <- grades[grades >= 85]
lowest_grades_removed
#28
middle_grades_removed <- grades[-c(3, 4)]
middle_grades_removed

#29
fifth_vector <- second_vector[-c(5, 10)]
fifth_vector
#30
set.seed(5)
random_vector <- runif(n = 10, min = 0, max = 1000)
random_vector
#31
sum_vector <- sum(random_vector)
sum_vector
#32
cumsum_vector <- cumsum(random_vector)
cumsum_vector
#33
mean_vector <- mean(random_vector)
mean_vector
#34
sd_vector <- sd(random_vector)
sd_vector
#35
round_vector <- round(random_vector)
round_vector
#36
sort_vector <- sort(random_vector)
sort_vector
#37
set.seed(5)
random_vector <- rnorm(n=1000, mean = 50, sd = 15)
random_vector #it is the normal distribution of the r function
#38
histogram <- hist(random_vector)
#39
#Downloaded the datafile ds_salaries.csv from Canvas
#40
library(pacman)
p_load(tidyverse)
#41
first_dataframe <- read_csv("ds_salaries.csv")
#42
head(first_dataframe)
head(first_dataframe, n = 7)
names(first_dataframe)
smaller_dataframe <- select(first_dataframe, job_title, salary_in_usd)
smaller_dataframe
better_smaller_dataframe <- arrange(smaller_dataframe,
                                    desc(salary_in_usd))
better_smaller_dataframe
better_smaller_dataframe <- filter(smaller_dataframe, salary_in_usd >
                                     80000)
better_smaller_dataframe
better_smaller_dataframe <-
  mutate(smaller_dataframe, salary_in_euros = salary_in_usd * .94)
better_smaller_dataframe
better_smaller_dataframe <- slice(smaller_dataframe, 1, 1, 2, 3, 4, 10,
                                  1)
better_smaller_dataframe
ggplot(better_smaller_dataframe) +
  geom_col(mapping = aes(x = job_title, y = salary_in_usd), fill =
             "blue") +
  xlab("Job Title") +
  ylab("Salary in US Dollars") +
  labs(title = "Comparison of Jobs ") +
  scale_y_continuous(labels = scales::dollar) +
  theme(axis.text.x = element_text(angle = 50, hjust = 1))
#testing the solution
library(pacman)
p_load(testthat)
test_file("project1_tests.R")


