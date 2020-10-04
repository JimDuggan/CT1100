library(readxl)
library(ggplot2)
library(dplyr)

data_y <- read_excel("datasets/airports/NYC_AllFlights.xlsx")

# Needed so that we order the months (useful for ggplot calls which orders by factor order)
data_y$Month <- factor(data_y$Month,
                     levels=c("Jan","Feb","Mar","Apr","May","Jun",
                              "Jul","Aug","Sep","Oct","Nov","Dec"))

summary(data_y)
dim(data_y)

# Display a frequency count of flights by month and origin
ggplot(data_y,aes(x=Month,fill=origin))+geom_bar()

# Display a frequency count of flights by hour of day and origin
ggplot(data_y,aes(x=HourOfDay,fill=origin))+geom_bar()
ggplot(data_y,aes(x=HourOfDay,fill=origin))+geom_bar()+facet_wrap(~Month)
