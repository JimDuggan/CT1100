library(GGally)
library(ggplot2)
library(aimsir17)
library(dplyr)

mh <- filter(observations,station=="MACE HEAD")

data <- mh %>% group_by(station, day, month) %>%
  summarise(Rain=sum(rain),
            Msl=mean(msl),
            Wdsp=mean(wdsp)) %>%
  ungroup() %>%
  select(Rain,Msl,Wdsp)

ggpairs(data, title="correlogram of aimsir17 for MACE HEAD") 
