library(readxl)
library(ggplot2)
library(dplyr)

data_m <- read_excel("datasets/airports/NYC_July_Flights.xlsx")

# Needed so that we order the days (useful for ggplot calls)
data_m$DayOfWeek <- factor(data_m$DayOfWeek,
                         levels=c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"))

summary(data_m)

# Display a frequency count of flights by day of week and origin
ggplot(data_m,aes(x=DayOfWeek,fill=origin))+geom_bar()

