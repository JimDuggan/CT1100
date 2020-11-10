# Arrange the observations by month and by highest temperature

library(aimsir17)
library(dplyr)

ans <- arrange(observations,month,desc(temp))

ans1 <- arrange(observations,month,temp)


