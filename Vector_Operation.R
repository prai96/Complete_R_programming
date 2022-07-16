

x <- rnorm(5)
x

for(i in x){
  print(i)
}

print(x[2])

---------------------------------------------------------
# Vectorized form
  
N <- 100
a <- rnorm(N)
b <- rnorm(N)

c<- a*b

----------------------------------------------------------
# Devectorized form
d <- rep(NA,100)
for(i in 1:N){
  d[i]<- a[i]*b[i]
}  
  


