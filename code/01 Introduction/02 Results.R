library(ggplot2)
library(readr)


res <- read_csv("code/01 Introduction/ResultsTest.csv")

res$Contacts <- as.factor(res$Contacts)



ggplot(res,aes(x=Contacts,colour=Contacts))+geom_bar()
