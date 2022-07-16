getwd()
setwd('/Users/Apple/Desktop_data/R_PROGRAM')

movies <- read.csv(file.choose())

head(movies)

colnames(movies)
# changing the columns names
colnames(movies) <- c('Film','Genre','Rotten_Ratings','Audience_Rating','Budget','Year')
head(movies)

#_________Theme______________________________

o<-ggplot(data=movies,aes(x=Budget))

h<-o+ geom_histogram(binwidth = 10,aes(fill=Genre),color='black')

# Changing the names of X label and y
h+xlab('Money')+
  ylab('Number of Movies')

# Label Formatting
h+xlab('Money')+
  ylab('Number of Movies')+
  theme(axis.title.x = element_text(color='Blue',size = 20),
        axis.title.y = element_text(color='Dark Red',size = 20))

# Tick Mark Formatting
h+xlab('Money')+
  ylab('Number of Movies')+
  theme(axis.title.x = element_text(color='Blue',size = 20),
        axis.title.y = element_text(color='Dark Red',size = 20),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15))

# Legend Formatting
h+xlab('Money')+
  ylab('Number of Movies')+
  theme(axis.title.x = element_text(color='Blue',size = 20),
        axis.title.y = element_text(color='Dark Red',size = 20),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15),
        legend.title = element_text(size=20), # Legend Title
        legend.text = element_text(size=8),   # Legend Text Size
        legend.position = c(1,1), # legend Position
        legend.justification = c(1,1))   # legend Position

# Adding Title to our Figure
h+xlab('Money')+
  ylab('Number of Movies')+
  ggtitle('Movies budget title')+
  theme(axis.title.x = element_text(color='Blue',size = 20),
        axis.title.y = element_text(color='Dark Red',size = 20),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15),
        legend.title = element_text(size=20), # Legend Title
        legend.text = element_text(size=8),   # Legend Text Size
        legend.position = c(1,1), # legend Position
        legend.justification = c(1,1),# legend Position
        plot.title = element_text(size = 25,colour = 'Blue',family = 'Courier'))  # Family is used for Font     

 












