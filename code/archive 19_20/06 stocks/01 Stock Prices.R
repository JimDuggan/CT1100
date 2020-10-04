library(quantmod)

prices <- getSymbols(c("AMZN","AAPL","^DJI"),
                     auto.assign = T,
                     from="2019-01-01",
                     to="2019-09-19")

apple <- getSymbols(c("AAPL"),
                     auto.assign = T,
                     from="2012-06-01",
                     to="2019-10-01")

fb <- getSymbols(c("FB"),
                    auto.assign = T,
                 from="2012-06-01",
                 to="2019-10-01")

chartSeries(FB,theme="white")
chartSeries(AMZN,theme="white")
chartSeries(DJI,theme="white")
chartSeries(AAPL,theme="white")
