# Creating Function

Myplot <- function(){
  Data <- MinutesPlayed[2,,drop=F]
  
  matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
  legend('bottomleft',inset = 0.01,legend=Players[3],pch=15:18,col=c(1:4,6),horiz = F,cex = 0.5)
}

Myplot()

# Creating More flexible Funtion

Myplot1 <- function(data,rows= 1:10){
  Data <- data[rows,,drop=F]
  
  matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
  legend('bottomleft',inset = 0.01,legend=Players[rows],pch=15:18,col=c(1:4,6),horiz = F,cex=0.3)
}
Myplot1(Games)