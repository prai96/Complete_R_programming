# Packages

# activate packages
library(ggplot2)

?ggplot2

qplot(data=diamonds, x= carat, y =price , colour = clarity,facets=.~clarity)