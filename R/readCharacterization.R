readCharacterization <- function(Directory, filename= "data_characterization.txt") {
  
  X <- read.delim(file.path(Directory,filename, fsep =.Platform$file.sep), 
                  skip = 97,                    
                  header = FALSE,                 
                  stringsAsFactors= FALSE)
        
  colnames(X)<- c("Id","SeriesNo","DataPoints","EarlyDate","MostRecent",
                  "UniqueTimes","MissingVals","TOBvaluesKnown", "UnderlyingVal","Max","Min","Mean",
                  "Median","FrstQrtl","LastQrtl","Sdev","BadFlags")
  return(X)
}