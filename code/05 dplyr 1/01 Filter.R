library(aimsir17)
library(dplyr)


bel <- filter(observations,station=="BELMULLET")

mhj <- filter(observations,station=="MACE HEAD",month==1)
