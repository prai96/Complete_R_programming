stats[1:10,]
stats[3:6,]

is.data.frame(stats[3:6,])
# Mean of Column
mean(stats$Birth.rate)
# Adding Column
stats$Mean_Birth <- mean(stats$Birth.rate)
head(stats)
# Removing Column
stats$Mean_Birth<- NULL

head(stats)


#-----------------Filtering Data Frame----------------------#
head(stats)
stats$Internet.users <2
filter <- stats$Internet.users<2
stats[filter,]

# Lets Do this with another method

stats[stats$Internet.users>70,]

# Lets make more interesting command
stats[stats$Birth.rate <50 & stats$Internet.users>50,]

stats[stats$Internet.users >60 & stats$Income.Group == 'High income',]

levels(stats$Income.Group)


stats[stats$Country.Name=='Malta',]




