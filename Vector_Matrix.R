
# Named Vector

Ram<- 1:5
Ram

#Named
names(Ram)<- c('a','b','c','d','e')
Ram

Ram['c']

#Clear Names
names(Ram)<- NULL
names(Ram)

#Naming Dimension 1
vec<- rep(c('a','bb','t'),times=3)
vec

vec1<- rep(c('a','bb','t'),each=3)
vec1

Bravo<-matrix(vec1,3,3)
Bravo

# Assigning Row name
rownames(Bravo) <-c('I',"Am","U")
Bravo

# Assigning Column names

colnames(Bravo)<- c('One','Two','Three')
Bravo
