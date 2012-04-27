readAsArray <- function(Directory , filename = "data.txt" ){ 
  require(RghcnV3)
  
  indexGen <- function(dataLine,minYear){  
    Year <- (dataLine[2] %/% 1  )  
    Frac <- dataLine[2] - Year
    Month <- round(Frac*12+ .5)   
    return( c(  Month  , Year-minYear) )
  }
  isMultiValue <- function(Directory){
    
    X <- readLines(file.path(Directory,"data.txt", fsep = .Platform$file.sep),n = 4)
    Multi <- grepl("Multi", X[4], fixed = TRUE)
    return(Multi)    
  }
  
  FileType <- isMultiValue(Directory)
  if(FileType == TRUE) {
    print(" this function only works on single value files")
    print(" it does not work on multi value files")
    print(" the multi value version of data.txt can be read")
    print(" with the function readBerkeleyData")
    stop("data.txt is a multi valued file")
  }
  x  <- file.path(Directory,filename, fsep =.Platform$file.sep)
  D  <- as.matrix( read.delim(x, skip = 111, 
                              colClasses = c("numeric","NULL","numeric","numeric",
                                             "NULL","NULL","NULL"),
                              header = FALSE))
  dimnames(D)[2] <- list(c("Id",  "Date","Temp"))
   
  stations <- max(D[,1])  
  minDate  <- floor(min(D[,2], na.rm = T))
  maxDate  <- floor(max(D[,2], na.rm = T))
  Data <- array(NA, c(stations,12,maxDate-minDate+1))
  dimnames(Data)[2] <-  list(c(month.abb))
  dimnames(Data)[3] <-  list(c(seq(from =minDate, to =maxDate)))
  dimnames(Data)[1] <-  list(seq(from = 1,to = stations))
  offsetYear <- minDate - 1
  
  
  for( i in 1:nrow(D)){  
    dat <- indexGen(D[i,], offsetYear)
     
    Data[D[i,"Id"],as.integer(dat[1]),as.integer(dat[2])] <- D[i,"Temp"]  
  }
  
  Data <- removeNaStations(Data)
  return(Data)
  
}
  