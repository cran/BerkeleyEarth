readBestData <- function(Directory , filename="data.txt", output = "Array"){ 
  
  indexGen <- function(dataLine,minYear){  
    Year <- (dataLine[2] %/% 1  )  
    Frac <- dataLine[2] - Year
    Month <- round(Frac*12+ .5)   
    return( c( dataLine[1] , Month  , Year-minYear,dataLine[3])) 
  }
  
  
  x  <- file.path(Directory,filename, fsep =.Platform$file.sep)
  D  <- as.matrix( read.delim(x, skip = 111,    header = FALSE))
  dimnames(D)[2] <- list(c("Id","SeriesNo","Date","Temp","Unc","Obs","Tobs"))
  if(output != "Array") return(D)
  
  D  <- D[,c(1,3,4)]
  stations <- max(D[,1])  
  minDate  <- floor(min(D[,2], na.rm = T))
  maxDate  <- floor(max(D[,2], na.rm = T))
  Data <- array(NA, c(stations,12,maxDate-minDate+1))
  dimnames(Data)[2] <-  list(c(month.abb))
  dimnames(Data)[3] <-  list(c(seq(from =minDate, to =maxDate)))
  dimnames(Data)[1] <-  list(c(seq(from = 1,to= stations)))
  offsetYear <- minDate - 1
  
  
  for( i in 1:nrow(D)){  
    dat <- indexGen(D[i,], offsetYear) 
    Data[as.integer(dat[1]),as.integer(dat[2]),as.integer(dat[3])] <- dat[4]  
  }
  
  return(Data)
  
}
  