#Reading data Manually

stats <- read.csv(file.choose())


#____________________________________#
# EDA
nrow(stats)
ncol(stats)

head(stats)
tail(stats)
head(stats,n=10)
?str()
str(stats)
colnames(stats)

summary(stats)


#______Using $ dollar sign____________


stats$Country.Code
stats[,"Country.Code"]


levels(stats$Income.Group)
