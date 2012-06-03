selectiveRead <- function(Directory,Month = 7, file ="data.bin"){
  require(bigmemory)
  options(bigmemory.allow.dimnames=TRUE)
   
  D   <- attach.big.matrix(dget(file.path(Directory, "data.desc", fsep=.Platform$file.sep)), 
                           path = Directory)
  
  
  lowerBound <- (Month-1)/12
  upperBound <- Month/12
  dex <- which((D[,3] %% 1) > lowerBound & (D[,3] %% 1)< upperBound)
  return(D[dex,c(1,3,4)])
  
}