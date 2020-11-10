library(aimsir17)

new_obs <- select(observations,station,year,month,day,hour,temp)

select(observations,station:rain)

select(observations,-(station:rain))

select(observations,starts_with("w"))

select(observations,ends_with("p"))

select(observations,ends_with("p"),everything())
