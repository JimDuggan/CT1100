clifden <- c(196.0, 106.3,  78.9,  99.2, 64.5,   50.1, 
              58.9, 146.3, 117.5, 117.9, 160.0, 183.4)
names(clifden) <- c("Jan","Feb","Mar","Apr","May","Jun",
                    "Jul","Aug","Sep","Oct","Nov","Dec")

summary(clifden)

dublin_air <- c(93.1,	36.9,	100.0,	68.9,	 19.1,	 4.8,	
                40.0,	48.0,	 43.8,	42.6,	131.2,	81.0)
names(dublin_air) <- c("Jan","Feb","Mar","Apr","May","Jun",
                       "Jul","Aug","Sep","Oct","Nov","Dec")


summary(dublin_air)

clifden - dublin_air

