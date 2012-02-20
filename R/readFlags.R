readFlags <- function(Directory, filename= "flags.bin") {
  
  require(bigmemory)
  options(bigmemory.allow.dimnames=TRUE)
  if(!grepl(".bin",filename)) stop("Use a .bin extension")
  dname <- sub("bin","desc",filename)
  fname <-   file.path(Directory,filename, fsep =.Platform$file.sep)
   
  
  if(!file.exists(fname)){
    txtName <- sub("bin","txt",fname)
    
    D    <- read.big.matrix(txtName, skip = 59,
                            backingpath = Directory, backingfile = filename, 
                            descriptorfile = dname, 
                            sep = "\t", 
                            type = "double" )
                             
    return(D)
    
  }else {
    return(attach.big.matrix(dget(file.path(Directory, dname, fsep=.Platform$file.sep)), 
                             path = Directory))
    
  }
  
}  