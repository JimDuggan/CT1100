# Install the package aimsir17
# Check out the variable:
#   observations
# stations
# eirgrid17
# Explore Storm Ophelia
# https://github.com/JimDuggan/aimsir17/tree/master/data-raw/Examples/02%20Storm%20Ophelia
# 16th October 2017 

library(aimsir17)     # The data is here
library(dplyr)        # This allows you to filter the data
library(ggplot2)      # This allows you to generates a scatter plot

rp <- filter(observations,station == "ROCHES POINT",month==10,day==16)

ggplot(rp,aes(x=date,y=wdsp))+geom_point()+geom_line()
ggplot(rp,aes(x=date,y=wdsp))+geom_point()+geom_line()



