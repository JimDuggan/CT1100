library(dplyr)
library(ggplot2)
source("code/05 dplyr/TidyCSOCars.R")

# get the data in tidy format
cso_cars <- tidy_cso()

# plot the area graph
ggplot(data=cso_cars,
       mapping=aes(x=Year,y=NewPrivateCars,colour=CarType,fill=CarType)) +
  geom_line()+geom_area()+ggtitle("New Private Cars 1998-2018")+
  ylab("Number of Registrations")

# calculate the sum for each year
cso_cars %>% group_by(Year) %>% 
             summarise(Total=sum(NewPrivateCars))

