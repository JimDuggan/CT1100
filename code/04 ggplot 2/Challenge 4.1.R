library(aimsir17)
library(dplyr)
library(ggplot2)

mh <- filter(observations,
             station=="MACE HEAD" | station=="DUBLIN AIRPORT" |
             station == "SherkinIsland",month==1)
ggplot(data=mh,aes(x=date,y=temp,size=rain,colour=station))+
  geom_point()

mh <- filter(observations,month==10,day==16)
ggplot(data=mh,aes(x=date,y=msl,size=wdsp,colour=station))+
  geom_point()+geom_line()
ggplot(data=mh,aes(x=date,y=msl,size=rain,colour=station))+
  geom_point()+geom_line()
