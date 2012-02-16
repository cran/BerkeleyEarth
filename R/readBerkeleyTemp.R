 
 readBerkeleyTemp <- function(Directory, buffer = 500000,tempFname = "temperature.bin"){ 
   
  getRow <- function(berkDate, minYear){
    
    Year <- (berkDate %/% 1  )  
    Frac <- berkDate - Year
    Month <- round(Frac*12+ .5)
    Offset <- (Year - minYear)*12
    
    return(as.integer(Offset + Month))
  }
   
  
  require(bigmemory)
  require(biganalytics)
  options(bigmemory.allow.dimnames=TRUE)
  dname <- sub("bin","desc",tempFname)
  Tfile <- file.path(Directory,tempFname, fsep =.Platform$file.sep)
  if(file.exists(Tfile)){
    
    D   <- attach.big.matrix(dget(file.path(Directory, dname, fsep=.Platform$file.sep)), 
                             path = Directory)
    return(D)
  }
  
  D <- readBerkeleyData(Directory=Directory,filename = "data.bin")
  minYear <- floor(colmin(D,cols = 3))
  maxYear <- floor(colmax(D, cols = 3))
  Years   <- (maxYear - minYear) + 1
  stations <- colmax(D, cols = 1)   
  
  maxRows  <-  Years * 12
  Temp <- filebacked.big.matrix(nrow = maxRows, ncol = stations,
                                type = "double",
                                init  =  NA,
                                dimnames = list(c(seq( from =minYear, to=(maxYear+11/12), by = 1/12))
                                                ,c(seq(from = 1,to = stations))),
                                separated = FALSE,
                                backingfile = tempFname,
                                backingpath = Directory,
                                descriptorfile = dname)
   
  
  startTime <- Sys.time()
  nlines <- nrow(D)
  linesRead <- 0 
  while(linesRead < nlines){
    startLine <- linesRead + 1
    endLine   <- startLine + buffer
    if(endLine > nlines)endLine <- nlines
    block <- D[startLine:endLine,]
    for(dataLine in 1:nrow(block)){
      Temp[getRow(block[dataLine,"Date"],minYear),
           as.integer(block[dataLine,"Id"])] <- block[dataLine,"Temp"]   
      
    }
    flush(Temp)
    print("Flushing Block")
    linesRead <- endLine
    
  }
  
   
  print(Sys.time()-startTime)         
 
  return(Temp)
 
 }
  

