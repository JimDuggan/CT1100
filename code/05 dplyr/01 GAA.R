library(readxl)
library(dplyr)
library(ggplot2)

# source: https://www.gaa.ie/live-updates/sept0119/

match <- read_excel("datasets/sport/DublinKerry19.xlsx")

scores <- match %>% group_by(Team,Scorer) %>% summarise(Points=sum(Points)) %>%
          arrange(desc(Points))

ggplot(data=match,aes(x=Time,y=Score,colour=Team))+
  geom_line()+geom_point(size=2)+xlab("Minute")+ylab("Points")+
  ggtitle("The Race for Sam 2019")
