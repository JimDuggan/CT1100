library(GGally)
library(ggplot2)
library(aimsir17)
library(dplyr)
library(ggpubr)

mh <- filter(observations,station=="MACE HEAD")

data <- mh %>% group_by(station, day, month) %>%
             summarise(Rain=sum(rain),
                       Msl=mean(msl),
                       Wdsp=mean(wdsp)) %>%
             ungroup() %>%
             select(Rain,Msl,Wdsp)

ggpairs(data, title="correlogram of aimsir17 for MACE HEAD") 

library(GGally)
my_mpg <- select(mpg,displ,cty,hwy)
ggpairs(my_mpg, title="correlogram of mpg")

