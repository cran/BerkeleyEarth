readSiteSummary <- function(Directory, filename= "site_summary.txt") {
  
  X <- read.delim(file.path(Directory,filename, fsep =.Platform$file.sep), 
                  comment.char = "%",  
                  na.strings = "-999.00",
                  header = FALSE,                 
                  stringsAsFactors= FALSE)
  colnames(X)<- c("Id","Lat","Lon","Altitude")
    
  return(X)
}