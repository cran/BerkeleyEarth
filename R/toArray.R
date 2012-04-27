
toArray <- function(dataIn, startYear=1900, endYear = 2011){ 
 
 indexGen <- function(dataLine,minYear){  
   Year <- (dataLine[2] %/% 1  )  
   Frac <- dataLine[2] - Year
   Month <- round(Frac*12+ .5)   
   return( c(  Month  , Year-minYear) )
 }
  
 if(sum(c("Id","Date","Temp") %in% colnames(dataIn)) != 3) stop("wrong column names")
 D <- dataIn[,c("Id","Date","Temp")]
 D <- D[which(D[,2] >= startYear &  D[,2] < endYear +1),]
 
 
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
 