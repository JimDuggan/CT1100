# This is a test script file

# Create tibble one that has the month, hour, day, date, station and msl
# Filter the tibble to tibble two for October 16th, and for “VALENTIA OBSERVATORY” and “DUBLIN AIRPORT”
# Display the hourly values on a time series (x axis is time) using ggplot2 with the aesthetic set to station


library(aimsir17)
library(ggplot2)
library(dplyr)

t1 <- select(observations,month,day,hour,date,station,msl)

t2 <- filter(t1, 
             station == "VALENTIA OBSERVATORY" | station == "DUBLIN AIRPORT", 
             day==16, 
             month==10)

p1 <- ggplot(t2,aes(x=date,y=msl,colour=station))+
             geom_point()+geom_line()




