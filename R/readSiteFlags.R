readSiteFlags  <- function(Directory, filename= "site_flags.txt") {
  
  X <- read.delim(file.path(Directory,filename, fsep =.Platform$file.sep), 
                  skip = 44,                    
                  header = FALSE,                 
                  stringsAsFactors= FALSE)
  flagNames <- paste("Flag",seq(1,12),sep ="_")
  colnames(X)<- c("Id",flagNames)
    
  return(X)
}