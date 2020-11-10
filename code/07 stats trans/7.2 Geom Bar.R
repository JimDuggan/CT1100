# Draw a bar chart of clarity
# Extend it to explore the cut

library(ggplot2)

ggplot(diamonds,aes(x=clarity))+geom_bar()

ggplot(diamonds,aes(x=clarity,fill=cut))+geom_bar()

ggplot(diamonds,aes(x=clarity,fill=cut))+geom_bar(position = "fill")

ggplot(diamonds,aes(x=clarity,fill=cut))+geom_bar(position = "dodge")


