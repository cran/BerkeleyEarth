readSources <- function(Directory, filename= "sources.txt") {
  
  X <- read.delim(file.path(Directory,filename, fsep =.Platform$file.sep), 
                  skip = 54,                    
                  header = FALSE,                 
                  stringsAsFactors= FALSE)
  flagNames <- paste("Flag",seq(1,9),sep ="_")
  colnames(X)<- c("Id","SeriesNo","Date",flagNames)
  
  
  return(X)
}