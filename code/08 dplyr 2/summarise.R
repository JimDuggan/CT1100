library(aimsir17)
library(dplyr)

test <- filter(observations,
               station=="MACE HEAD",
               month==10)

test_g <- group_by(test,day)

summarise(test_g,TotalRainfall=sum(rain,na.rm=T))
