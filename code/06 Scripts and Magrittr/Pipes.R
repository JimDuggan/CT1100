library(aimsir17)
library(dplyr)

ans1 <- filter(observations,
               station=="MACE HEAD",
               month==10,
               day==16)

ans2 <- arrange(ans1,desc(wdsp))

ans3 <- observations %>% 
         filter(station=="MACE HEAD",
                month==10,
                day==16) %>%
         arrange(desc(wdsp))
