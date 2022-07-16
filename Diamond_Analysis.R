# Reading Data
mydata <- read.csv("/Users/Apple/Desktop/DESKTOP/R_PROGRAM/P2-Mispriced-Diamonds.csv")
# Installing Packages
install.packages("ggplot2")
# For visulaization with GGPLOT
ggplot(data=mydata[mydata$carat<2.5,],aes(x=carat, y=price, colour =clarity))+
  geom_point(alpha = 0.1) +
  geom_smooth()



