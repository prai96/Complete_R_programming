getwd()
setwd('/Users/Apple/Desktop_data/R_PROGRAM')

movies <- read.csv(file.choose())

head(movies)

colnames(movies)
# changing the columns names
colnames(movies) <- c('Film','Genre','Rotten_Ratings','Audience_Rating','Budget','Year')
head(movies)

summary(movies)

str(movies)

# Using Factor function
factor(movies$Year)
factor(movies$Film)
factor(movies$Genre)

summary(movies)
str(movies)




#_________________________GGPLOT_____________________________________________


library(ggplot2)

ggplot(data = movies,aes(x=Rotten_Ratings,y=Audience_Rating))

# Adding Geometric
ggplot(data = movies,aes(x=Rotten_Ratings,y=Audience_Rating)) + 
  geom_point()


# Adding Colors
ggplot(data = movies,aes(x=Rotten_Ratings,y=Audience_Rating,color=
                           Genre)) + 
  geom_point()


# Adding Size
ggplot(data = movies,aes(x=Rotten_Ratings,y=Audience_Rating,color=
                           Genre,size = Budget)) + 
  geom_point()


# PLAYING WITH GEOMETRIC

p<- ggplot(data = movies,aes(x=Rotten_Ratings,y=Audience_Rating,color=
                               Genre,size = Budget))

p+geom_point()

# Line plot

p+geom_line()

# Multi layer plot
p+geom_line()+geom_point()

#_________Overriding Aesthetic________________

q <- ggplot(data = movies,aes(x=Rotten_Ratings,y=Audience_Rating,color=
                                Genre,size = Budget))
# Example 1
q+geom_point(aes(size=Rotten_Ratings))

# Example 2
q+geom_point(aes(color=Year))

# Remaining the same 

q+geom_point()

# Decreasing line size and point size

q+geom_line(size=1)+geom_point(size=1)


# Mapping

q+geom_point(aes(color = Budget))

# Setting

q+geom_point(color='dark green')

#_____________Histogram_____________________________________________
s<-ggplot(data=movies,aes(x=Budget))
s+geom_histogram(binwidth = 10,color='green')

# Advanced Histogram with border
s+geom_histogram(binwidth = 10,aes(fill=Genre),color='Dark blue')


#____________Density Chart_________________________________________

s+geom_density()

# Fill genre
s+geom_density(aes(fill=Genre))

# Adding Position
s+geom_density(aes(fill=Genre),position = 'stack')

#________________Statictical Interfrence_______________________________
u<-ggplot(data=movies,aes(x=Rotten_Ratings,y=Audience_Rating,color=Genre))

u+geom_point()+geom_smooth(fill=NA)


# Box Plot

b <-ggplot(data=movies,aes(x=Genre,y=Audience_Rating,color=Genre))

b+geom_boxplot(size=0.8) +geom_point()

b+geom_boxplot(size=0.8) +geom_jitter()

# Another way of Boxplot

b+geom_jitter()+geom_boxplot(size=1,alpha=0.5)




















