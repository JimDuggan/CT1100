library(tidyr)
library(readxl)

tidy_cso <- function (){
  cso_wide <- read_excel("datasets/economic/CarsIreland.xlsx")
  cso_wide %>% filter(CarType!= "All fuel types") %>%
               gather(key=Year,
                      value=NewPrivateCars,
                      `1998`:`2018`) %>%
               mutate(Year=as.integer(Year)) 
}