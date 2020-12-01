library(aimsir17)
library(ggplot2)

data <- observations %>% 
          filter(station=="MALIN HEAD") %>%
          group_by(day,month) %>%
          summarise(MeanDailyTemp=mean(temp))

ggplot(data) + 
  geom_histogram(aes(x=MeanDailyTemp),binwidth = 1)+
  geom_vline(xintercept = median(data$MeanDailyTemp),colour="red")+
  geom_vline(xintercept = mean(data$MeanDailyTemp),colour="blue")


ggplot(data) + 
  geom_histogram(aes(x=MeanDailyTemp),binwidth = 0.5)+
  geom_vline(xintercept = median(data$MeanDailyTemp),colour="red")+
  geom_vline(xintercept = mean(data$MeanDailyTemp),colour="blue")

data2 <- observations %>% 
  filter(station=="MALIN HEAD" | 
         station=="SherkinIsland") %>%
  group_by(station,day,month) %>%
  summarise(MeanDailyTemp=mean(temp))

ggplot(data2) + 
  geom_histogram(aes(x=MeanDailyTemp,fill=station),
                 binwidth = 1)+
  facet_wrap(~station,ncol=1)


data3 <- observations %>% 
  filter(station=="MALIN HEAD" | 
         station=="SherkinIsland")

ggplot(data3,aes(x=temp,colour=station)) + 
  geom_freqpoly(binwidth=1)


data3 <- observations %>% 
  filter(station=="MALIN HEAD" | 
           station=="SherkinIsland")

ggplot(data3,aes(y=temp,x=station)) + 
  geom_boxplot()


ggplot(observations,aes(y=temp,x=station)) + 
  geom_boxplot()+
  theme(axis.text.x=element_text(angle = 45))




