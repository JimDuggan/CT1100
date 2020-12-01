library(dslabs)
library(dplyr)
library(ggplot2)

f <- filter(heights,sex=="Female")
m <- filter(heights,sex=="Male")

ggplot(f) + 
  geom_histogram(aes(x=height),binwidth = 1)

ggplot(m) + 
  geom_histogram(aes(x=height),binwidth = 1)

ggplot(heights)+
  geom_freqpoly(aes(x=height,colour=sex))
