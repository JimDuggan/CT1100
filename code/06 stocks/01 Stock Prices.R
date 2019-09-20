library(quantmod)

prices <- getSymbols(c("AMZN","AAPL","^DJI"),
                     auto.assign = T,
                     from="2019-01-01",
                     to="2019-09-19")

apple <- getSymbols(c("AAPL"),
                     auto.assign = T,
                     from="1990-01-01",
                     to="2019-09-19")

chartSeries(AMZN,theme="white")
chartSeries(DJI,theme="white")
chartSeries(AAPL,theme="white")
