rm(list = ls())  

m <- matrix(c(1:4), 2)     # This will repeat the number 1 to compensate for an otherwise incomplete matrix.

m.trans <- t(m)
m.inv <- solve(m)
m
m.trans
m.inv

m.arr <- as.data.frame(m)
mean.r1 <- rowMeans(m.arr[,1])

class(m)
class(m.arr)


m.arr[,1]

m.arr <- array(c(1:4),2,2)
