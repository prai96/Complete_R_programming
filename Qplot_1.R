#-----------qplot-----------

?qplot
# For plotting X axix
qplot(data = stats,x = Internet.users)
# For plottig X and Y axis
qplot(data=stats,x = Income.Group,y = Birth.rate)

# Increasing size of scatter item we use I
qplot(data=stats,x = Income.Group,y = Birth.rate,size=I(5))

# Changing the colour of I
qplot(data=stats,x = Income.Group,y = Birth.rate,size=I(5),color=I('blue'))

# Plotting the figure in Box plot we use geom=boxplot

qplot(data=stats,x =Income.Group,y = Birth.rate,geom = 'boxplot')

?boxplot


qplot(data=stats,x= Internet.users,y=Birth.rate)

qplot(data=stats,x= Internet.users,y=Birth.rate,size=I(3))

qplot(data=stats,x= Internet.users,y=Birth.rate,size=I(3))


qplot(data=stats,x= Internet.users,y=Birth.rate,size=I(3),color='Red')

# plot the color with income group

qplot(data=stats,x= Internet.users,y=Birth.rate,size=I(3),color=Income.Group)


#_______________________________________________________________________
# Playing with Dataframe Countries

df <- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)

head(df)

# First method to change the names of column in Dataframe
colnames(df)<- c('Countries','Codes','Regions')

tail(df)

# Second Method for changing the names of column in dataframe
df <- data.frame(Countries=Countries_2012_Dataset,Codes= Codes_2012_Dataset,Regions=Regions_2012_Dataset)

 





















