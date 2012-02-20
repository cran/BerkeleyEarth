readStationChange <- function(Directory, filename= "station_change.txt"){ 

   X <- read.delim(file.path(Directory,filename, fsep = .Platform$file.sep), 
                   comment.char = "%", 
                   quote ="", 
                   stringsAsFactors = FALSE)

   colnames(X)<- c("Id","EventNo", "Date","ChangeType")

    

 return(X)

}
 