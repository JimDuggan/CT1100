library(aimsir17)
library(dplyr)
library(ggplot2)

mh <- filter(observations,
             station=="MACE HEAD" | station=="DUBLIN AIRPORT" |
             station == "SherkinIsland",month==1)


ggplot(data=mh,aes(x=date,y=temp))+
  geom_point()

ggplot(data=mh,aes(x=date,y=temp,colour=station))+
  geom_point()

ggplot(data=mh,aes(x=date,y=temp,size=rain,colour=station))+
  geom_point()

ggplot(mpg,aes(x=displ,y=hwy,colour=class,size=cyl))+
  geom_point()+facet_wrap(~manufacturer)


