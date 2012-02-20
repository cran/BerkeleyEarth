getFileVersion <- function(filename){
  
  if(!grepl(".txt",filename)) stop("Use with txt files")
  
   
    
    X <- readLines(filename, n = 5)
    
    versionLine <- X[4]
    versionLine <- sub("% Version: ","", versionLine)
 
  return(versionLine)
}