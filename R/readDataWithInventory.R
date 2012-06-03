readDataWithInv <- function(Directory, Inventory, filename = "data.bin"){
  
  require(bigmemory)
  options(bigmemory.allow.dimnames=TRUE)
  
   
  dname <- sub("bin","desc",filename)
  fname <-   file.path(Directory,filename, fsep =.Platform$file.sep)
  if(!file.exists(fname)) stop( "file does not exist")
  if(!grepl("\\.bin", fname)) stop("use a filebacked matrix  .bin")
  if(!isInventory(Inventory)) stop(" you must supply an inventory")
  
   
  
  D   <- attach.big.matrix(dget(file.path(Directory, dname, fsep=.Platform$file.sep)), 
                           path = Directory)
   
  D   <- D[which(D[ ,"Id"] %in% as.numeric(Inventory$Id)),c("Id","Date","Temp")]
  
  
  stations <- length(unique(D[,"Id"]))  
  minDate  <- floor(min(D[,"Date"], na.rm = TRUE))
  maxDate  <- floor(max(D[,"Date"], na.rm = TRUE))
  tmonth   <- ((maxDate + 1 - minDate)*12) -1
  timeLine <- yearmon(minDate + seq(0,tmonth/12, by =1/12 )) 
  Data     <- matrix(NA, nrow = length(timeLine),ncol = stations)
  
  colnames(Data) <- unique(D[,"Id"])
 
   ## Look ma no loops!
   Data[cbind(match(yearmon(D[,"Date"]),timeLine),match(as.character(D[,"Id"]),colnames(Data)))]<-D[,"Temp"]
   
   Data <- ts(Data,start = min(timeLine), frequency = 12)
   Data <- removeNaStations(Data)
  return(Data)
  
  
  
}