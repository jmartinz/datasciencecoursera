# Test script

v<-c()


for(i in 1:100)
{
  v<-c(v,(i^2))
}

plot(v,type="l")
