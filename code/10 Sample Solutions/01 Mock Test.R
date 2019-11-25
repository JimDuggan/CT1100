# for plotting and the data set
library(ggplot2)

# for filtering, arranging and summarising the data
library(dplyr)

# (1) create you own copy of the tibble
my_mpg <- mpg


# (2) show the top five cars with the highest city miles per gallon
arrange(my_mpg,desc(cty))

# (3) Reduce the number of variables to 4
my_mpg2 <- select(mpg,manufacturer,model,year,cty, hwy)

# (4) Get the summary of cty and hwy (averages over all manufacturers)
summ <- my_mpg %>% 
          group_by(manufacturer) %>%
          summarise(AvrCty=mean(cty),
                    AvrHwy=mean(hwy))

# (5) Plot using ggplot2
ggplot(summ,aes(x=AvrCty,y=AvrHwy,colour=manufacturer)) + 
  geom_point()+xlab("Average City MPG") + 
  ylab("Average Highway MPG")
