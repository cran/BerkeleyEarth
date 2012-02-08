getFileInformation <- function(Directory){
  
   files <- list.files(Directory, full.names=TRUE, pattern = "\\.txt")
   found <- grep("data_characterization.txt", files)
   if(length(found) == 0) stop("This directory does not have all the Berkeley Files")
   
   FileInformation <- data.frame(Filename = basename(files), DataType = NA, Skip = NA,Hash = NA)
   
   for(thisFile in 1:length(files)){
     
     X <- readLines(files[thisFile], n = 500)
      
     TxtLines     <- grep("%",X)
     if(length(TxtLines) >0){
        
       
       FileInformation$DataType[thisFile]   <- sub( "% Type: " ,"",X[grep("% Type:", X)])
       FileInformation$Hash[thisFile]       <- sub("% Dataset Hash: ","",X[grep("% Dataset Hash:",X)])
       FileInformation$Skip[thisFile]       <- max(TxtLines)
       readme <- X[1:max(TxtLines)]
       readname <- FileInformation$Filename[thisFile]
       readname <- sub(".txt",".readme",readname)
       pathName <- dirname(files[thisFile])
       OutFile  <- file.path(pathName,readname, fsep= .Platform$file.sep)
       writeLines(readme,OutFile)
     }  
     
     write.table(FileInformation,file.path(Directory,"FileInfo.tab", fsep= .Platform$file.sep))
     
   }
  
  
}