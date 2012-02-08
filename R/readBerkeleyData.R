readBerkeleyData <- function( Directory, filename = "data.bin"){ 
                               
  require(bigmemory)
  options(bigmemory.allow.dimnames=TRUE)
  dname <- sub("bin","desc",filename)
  fname <-   file.path(Directory,filename, fsep =.Platform$file.sep)
  if(!file.exists(fname)){
    txtName <- sub("bin","txt",fname)
    
    D    <- read.big.matrix(txtName, skip = 111,
                             backingpath = Directory, backingfile = filename, 
                             descriptorfile = dname, 
                             sep = "\t", 
                             type = "double",
                             col.names =  c("Id","SeriesNo","Date","Temp","Unc","Obs","Tobs")
                             )
    return(D)
        
  }else {
    D   <- attach.big.matrix(dget(file.path(Directory, dname, fsep=.Platform$file.sep)), 
                               path = Directory)
    
  }
  
  
  
}



 