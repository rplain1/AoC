library(tidyverse)

data <- read_table('2022/inputs/day_02_input.txt', col_names = FALSE)

data


data %>% 
  rename(opp = X1, you = X2) %>% 
  mutate(
    opp_int = case_when(
      opp == 'C' ~ 3,
      opp == 'B' ~ 2,
      opp == 'A' ~ 1
    ),
    you_int = case_when(
      you == 'Z' ~ 3,
      you == 'Y' ~ 2,
      you == 'X' ~ 1
    ),
    score = case_when(
      you_int == 3 & opp_int == 1 ~ 0,
      opp_int == 3 & you_int == 1 ~ 6,
      you_int > opp_int ~ 6,
      you_int < opp_int ~ 0,
      you_int == opp_int ~ 3
    ),
    your_score = score + you_int
  ) %>% #View()
  summarise(sum(your_score))
  


data %>% 
  rename(opp = X1, you = X2) %>% 
  mutate(
    you = case_when(
      
    ),
    opp_int = case_when(
      opp == 'C' ~ 3,
      opp == 'B' ~ 2,
      opp == 'A' ~ 1
    ),
    you_int = case_when(
      you == 'Z' ~ 3,
      you == 'Y' ~ 2,
      you == 'X' ~ 1
    ),
    score = case_when(
      you_int == 3 & opp_int == 1 ~ 0,
      opp_int == 3 & you_int == 1 ~ 6,
      you_int > opp_int ~ 6,
      you_int < opp_int ~ 0,
      you_int == opp_int ~ 3
    ),
    your_score = score + you_int
  )
