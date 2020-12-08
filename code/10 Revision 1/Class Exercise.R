# (1) Create your own copy of the mpg table

library(ggplot2)
library(dplyr)

my_mpg <- mpg

# (2) Show the top 5 cars with highest city miles per gallon

my_mpg1 <- arrange(my_mpg,desc(cty)) 
slice(my_mpg1,1:5)

my_mpg %>% arrange(desc(cty)) %>% slice(1:5)


# (3) Show the top 7

my_mpg %>% slice(1:7)

# (4) Generate an x-y plot avr CTY  avr HWY by manufacturer
#                          avr CTY  avr HWY by class
#                          avr CTY  avr HWY by year



sum_1 <- my_mpg %>% group_by(manufacturer)         %>%
             summarise(AvrCty=mean(cty),
                       AvrHwy=mean(hwy))

ggplot(sum_1,aes(x=AvrCty,y=AvrHwy,colour=manufacturer))+
  geom_point()

sum_2 <- my_mpg %>% group_by(class)         %>%
  summarise(AvrCty=mean(cty),
            AvrHwy=mean(hwy))

ggplot(sum_2,aes(x=AvrCty,y=AvrHwy,colour=class))+
  geom_point()


