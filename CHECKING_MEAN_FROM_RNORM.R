
## LAW OF LARGE NUMBER

N <- 100 # Generating randomly 100 Number
X <- 0 # storing value in X
for(i in rnorm(N)){
  if(i>-1 & i<1){
    X <- X+1
  }
}

X<- X/N
X