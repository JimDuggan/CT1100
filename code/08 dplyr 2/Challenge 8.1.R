# Add a new column rain_in, which measures 
# the hourly rainfall in inches
# Assume a conversion constant of 1 mm = 0.0393701 inches


library(aimsir17)
library(dplyr)

CM2I <- 0.0393701

obs1 <- observations %>% 
        select(day, month, hour,station, rain) %>%
        filter(station=="NEWPORT", day==16,month==10)

obs1 <- mutate(obs1, rain_in=rain*CM2I)


