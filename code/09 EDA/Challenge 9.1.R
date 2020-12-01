# Generate a histogram for max daily windspeed (MACE HEAD)

library(aimsir17)
library(ggplot2)
library(dplyr)

data1 <- observations %>% 
  filter(station=="MACE HEAD" | station=="DUBLIN AIRPORT") %>%
  group_by(station,day,month) %>%
  summarise(MaxDailyWdsp=max(wdsp))

ggplot(data) + 
  geom_histogram(aes(x=MaxDailyWdsp),binwidth = 1)+
  geom_vline(xintercept = median(data$MaxDailyWdsp),colour="red")+
  geom_vline(xintercept = mean(data$MaxDailyWdsp),colour="blue")

ggplot(data1) + 
  geom_histogram(aes(x=MaxDailyWdsp),binwidth = 1)+
  facet_wrap(~station,ncol=1)

