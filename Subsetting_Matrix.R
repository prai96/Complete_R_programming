 Games
 
 Games[1:2,6:10]
 Games[c(1,10),]
 Games[,c('2008','2010')]
 
 Games[1,,drop=F]
 
 # Visulazing Subset Matrix
 
Data <- MinutesPlayed[1:3,]
   
matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
legend('bottomleft',inset = 0.01,legend=Players[1:3],pch=15:18,col=c(1:4,6),horiz = F)