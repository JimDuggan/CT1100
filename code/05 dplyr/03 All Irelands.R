library(dplyr)
library(readxl)

data <- readxl::read_excel("datasets/sport/AllIrelandsResults.xlsx")

data %>% group_by(Winner) %>% summarise(Wins=n()) %>%
         arrange(desc(Wins))

data %>% group_by(Runner-up) %>% summarise(Losses=n()) %>%
  arrange(desc(Wins))

                                          