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



#_____________facets_____________________________

v<- ggplot(data=movies,aes(x= Budget))
v+geom_histogram(binwidth = 10,aes(fill=Genre),color='blue') +
  facet_grid(Genre~.) # You cannot see all the Histogram clearly so use Scales


v+geom_histogram(binwidth = 10,aes(fill=Genre),color='blue') +
  facet_grid(Genre~.,scales = 'free')

#______________Facets with Scatterplot________________________________

w <- ggplot(data = movies,aes(x=Rotten_Ratings,y=Audience_Rating,color=Genre))

w+geom_point(size=1.5)+
  facet_grid(Genre~.) #  Genre Row vise


w+geom_point(size=1.5)+
  facet_grid(.~Year) # Year Coloumn wise
# Now we use Genre and Year along in facets

w+geom_point(size=1.5)+
  facet_grid(Genre~Year)
# making with smooth layer

w+geom_point(size=1.5)+
  geom_smooth()+
  facet_grid(Genre~Year)

# Increase the size of point with budget
w+geom_point(aes(size=Budget))+
  geom_smooth()+
  facet_grid(Genre~Year)


#______________Coordinates_______________________________________________

m<-ggplot(data=movies,aes(x=Rotten_Ratings,y=Audience_Rating,size=Budget,color=Genre))

m+geom_point()

# Now view first quadrant

m<-ggplot(data=movies,aes(x=Rotten_Ratings,y=Audience_Rating,size=Budget,color=Genre))

m+geom_point()+
  xlim(50,100)+
  ylim(50,100)

# Zoom

n<-ggplot(data=movies,aes(x=Budget))

n+geom_histogram(binwidth = 10,aes(fill=Genre),colour='black')

# Lets zoom y axis and x axis with out removing any data


n<-ggplot(data=movies,aes(x=Budget))

n+geom_histogram(binwidth = 10,aes(fill=Genre),colour='black')+
  coord_cartesian(ylim = c(0,50),xlim = c(0,100))

# Lets Play with another plotting 
w+geom_point(size=1)+
  geom_smooth()+
  facet_grid(Genre~Year) +
  coord_cartesian(ylim=c(0,100))




