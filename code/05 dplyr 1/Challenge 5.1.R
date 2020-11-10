# Show the weather for “ROCHES POINT” on October 16th at 12 midday 

library(aimsir17)
library(dplyr)
library(ggplot2)

rp_oct16 <- filter(observations,
                   station=="ROCHES POINT",
                   month==10,
                   day==16,
                   hour==12)

rp_oct16_day <- filter(observations,
                   station=="ROCHES POINT",
                   month==10,
                   day==16)

rpv_oct16_day <- filter(observations,
                       station=="ROCHES POINT" | 
                       station=="VALENTIA OBSERVATORY",
                       month==10,
                       day==16)

ggplot(rpv_oct16_day,aes(x=date,y=msl,colour=station))+
  geom_point()+geom_line()

ggplot(rpv_oct16_day,aes(x=date,y=wdsp,colour=station))+
  geom_point()+geom_line()





