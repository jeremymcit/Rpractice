library(Lahman)
library(tidyverse)
library(dslabs)
# include years from 1961 to 2001. Make a scatterplot of 
# runs per game versus at bats (AB) per game.
Teams %>% mutate(runs_per_G = R/G, AB_per_G = AB/G) %>% filter(yearID %in% 1961:2001) %>% ggplot(aes(x = runs_per_G, y = AB_per_G)) + geom_point()
?Teams
#Make a scatterplot of win rate (number of wins per game) 
#versus number of fielding errors (E) per game.
Teams %>% mutate(win_rate = X3B, errors_per_game = X2B) %>% filter(yearID %in% 1961:2001) %>% ggplot(aes(x = win_rate, y = errors_per_game)) + geom_point()
summarise(1:10)
