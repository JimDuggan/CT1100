library(aimsir17)
library(dplyr)

CM2K <- 1.609344

obs1 <- observations %>% select(day, month, station, wdsp) %>%
           filter(station=="ROCHES POINT", day==16,month==10)

obs1 <- mutate(obs1, wdsp_kph=wdsp*CM2K)

