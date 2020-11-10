# Plot the carat (x) v the price (y) and colour by cut

library(ggplot2)

ggplot(diamonds,aes(x=carat,y=price))+geom_point()

ggplot(diamonds,aes(x=carat,y=price,colour=cut))+geom_point()
