# For a given weather station, and over one month of the year, 
# explore the relationship between atmospheric pressure and wind speed. 
# What do you think it might look like?
  
library(aimsir17)
library(ggplot2)
library(dplyr)



mh <- filter(observations,station=="MACE HEAD",month==3)
ggplot(data=mh,mapping = aes(x=msl,y=wdsp))+geom_point()+geom_smooth()

ggplot(data=observations,mapping = aes(x=msl,y=wdsp))+geom_point()




