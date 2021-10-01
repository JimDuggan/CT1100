library(ggplot2)
library(readr)
library(dplyr)


res <- read_csv("code/01 Introduction/ResultsTest.csv")


ggplot(res,aes(x=Animal,fill=Animal))+geom_bar()


res %>% group_by(Animal, Cola) %>% count()

table(res$Animal,res$Cola)


