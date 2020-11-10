# Organise the following into a pipeline command
# Subset all observations from aimsir17 from October 2017
# Select all those from “ROCHES POINT”
# Sort the observations by wind speed (descending)

library(aimsir17)
library(dplyr)

ans <- observations                      %>%   # Take 219K observations
       filter(month==10)                 %>%   # Filter month of October
       filter(station=="ROCHES POINT")   %>%   # Get data for ROCHES POINT
       arrange(desc(wdsp))               %>%   # Sort by wdsp (descending)
       head()                                  # Show first six records
