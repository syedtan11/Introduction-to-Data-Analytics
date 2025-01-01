cat("\014") # clears console
rm(list = ls()) # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE)
#clears packages
options(scipen = 100) # disables scientific notion for entire R session
library(pacman)
p_load(tidyverse)
#1
data_2015 <- read_csv("2015.csv")
head(data_2015)
#2
names(data_2015)
#3
view(data_2015)
#4
glimpse(data_2015)
#5
p_load(janitor)
data_2015 <- clean_names(data_2015)
data_2015
#6
happy_df <- data_2015[c("country","region","happiness_score","freedom")]
happy_df
#7
top_ten_df <- happy_df[1:10,]
top_ten_df
#8
no_freedom_df <- filter(happy_df,freedom<0.20)
no_freedom_df
#9
best_freedom_df <- happy_df[order("freedom"),]
best_freedom_df
#10
data_2015 <- mutate(data_2015, gff_stat=family+freedom+generosity)
data_2015
#11
library(dplyr)
happy_summary <- happy_df %>%summarise( mean_happiness=mean(happiness_score), 
                                        max_happiness=max(happiness_score),
                                        mean_freedom=mean(freedom), 
                                        max_freedom=max(freedom))
happy_summary
#12
regional_stats_df <- happy_df%>% group_by(region)%>%summarise( country_count=n(),
                                          mean_happiness=mean(happiness_score),
                                           mean_freedom=mean(freedom))
regional_stats_df
#14
data_2015 <- read_csv("2015.csv")





