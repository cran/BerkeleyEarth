readFlags <- function(Directory, filename= "flags.txt") {
  
  X <- read.delim(file.path(Directory,filename, fsep =.Platform$file.sep), 
                  skip = 59,                    
                  header = FALSE,                 
                  stringsAsFactors= FALSE)
  flagNames <- paste("Flag",seq(1,19),sep ="_")
  colnames(X)<- c("Id","SeriesNo","Date",flagNames)
            
   
  return(X)
}