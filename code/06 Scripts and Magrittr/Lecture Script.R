library(aimsir17)

hd <- arrange(observations,desc(temp))

cat("Hottest temp = ",max(hd$temp,na.rm = T))
