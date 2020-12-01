# For “BELMULLET” calculate the total 
# daily rainfall for October, and show using ggplot.
# Add an extra variable too

library(aimsir17)
library(dplyr)
library(ggplot2)

obs1 <- observations %>% 
         filter(station=="BELMULLET", month ==10)

obs1 <- group_by(obs1, day)

summ <- summarise(obs1,
                  TotalRain=sum(rain))

# summ <- summarise(obs1,
#                   TotalRain=sum(rain),
#                   MaxHourRain=max(rain),
#                   MinHourRain=min(rain))

ggplot(summ,aes(x=day,y=TotalRain))+
  geom_point()+geom_line()

obs2 <- observations %>% 
  filter(station=="BELMULLET", month ==10)

obs2 <- group_by(obs2, hour)

summ2 <- summarise(obs2,
                  TotalRain=sum(rain))

ggplot(summ2,aes(x=hour,y=TotalRain))+
  geom_point()+geom_line()


