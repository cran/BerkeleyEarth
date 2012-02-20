readSiteFlags  <- function(Directory, filename= "site_flags.txt") {
  
  X <- read.delim(file.path(Directory,filename, fsep =.Platform$file.sep), 
                  comment.char = "%",                    
                  header = FALSE,                 
                  stringsAsFactors= FALSE)
  
  flagNames <- paste("Flag",seq(from = 1,to=(ncol(X) -1)),sep ="_")
  colnames(X)<- c("Id",flagNames)
    
  return(X)
}