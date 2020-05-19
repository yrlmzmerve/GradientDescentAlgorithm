attach(mtcars)

# n data sayýsý 
myGradient <- function(x,y, learningRate, costThreshold, n, maxIteration){
  
  plot(x,y, col="blue", pch= 20)
  
  alfa <- runif(1,0,1) # 1 tane sec ve 0-1 arasýnda data ata
  betaC <- runif(1,0,1)
  
  ypred <- alfa * x + betaC
  MeanSquareError <- sum((y - ypred)^2) / n
  
  convergence <- F
  Iterations <- 0
  
  while (convergence == F) {
    
    new_alfa <- alfa - learningRate *(1/n) * (sum((ypred - y)*x))
    new_betaC <- betaC - learningRate *(1/n) * (sum((ypred - y)))
    
    alfa <- new_alfa
    betaC <- new_betaC
    
    ypred <- alfa * x + betaC
    
    MeanSquareNew <- sum((y - ypred)^2) / n
    
    if (MeanSquareError - MeanSquareNew < costThreshold ) {
      
      abline(betaC,alfa)
      convergence <- T
      
      return(paste("optimal betaC : ", betaC, "Optimal coefficient", alfa))
      
    }
    
    Iterations <- Iterations +1
    
    if (Iterations > maxIteration) {
      
      abline(betaC,alfa)
      convergence <- T
      return(paste("optimal betaC : ", betaC, "Optimal coefficient", alfa))
    }
    
  }
  
}

length(mtcars$cyl)

myGradient(disp,drat, 0.00002, 0.001,length(mtcars$cyl),2000000)

