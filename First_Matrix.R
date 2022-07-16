

# Building First Matrix Using Matrix() Function
 
mydata <- 1:20
mydata

A<-matrix(mydata,4,5)
A
b <- sum(A[3,])
b

C<- matrix(mydata,4,5,T)
C

# Usiing Rbind() Function

r1 <-c('I','am','happy')
r2<- c('whAt','a','boy')
r3<-c(1,2,3)

C<-rbind(r1,r2,r3)
C

# Using cbind() Fuction

d<-cbind(r1,r2,r3)
d
