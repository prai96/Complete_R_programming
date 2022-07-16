
movies<- read.csv(file.choose())

# Changing column names
colnames(movies) <- c('Film','Genre','Rotten_Ratings','Audience_Rating','Budget','Year')
head(movies)


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


#_______________Adding layer in GGPLOT_____________________________________

t <- ggplot(data=movies,aes(x=Audience_Rating))
# First way
t+geom_histogram(binwidth = 10,fill='sky blue',color='black')

# second way
p<-ggplot(data=movies)

p+geom_histogram(binwidth = 10,aes(x=Audience_Rating),fill='sky blue',color='black')











