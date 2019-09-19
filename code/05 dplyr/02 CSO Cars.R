library(dplyr)
library(ggplot2)
source("code/05 dplyr/TidyCSOCars.R")

cso_cars <- tidy_cso()

ggplot(data=cso_cars,
       mapping=aes(x=Year,y=NewPrivateCars,colour=CarType,fill=CarType)) +
  geom_line()+geom_area()+ggtitle("New Private Cars 1998-2018")+
  ylab("Number of Registrations")

