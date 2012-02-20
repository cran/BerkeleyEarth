getFileInformation <- function(Directory){
  
   files <- list.files(Directory, full.names=TRUE, pattern = "\\.txt")
    
   
   FileInformation <- data.frame(Filename = basename(files), DataType = NA, Version= NA, Hash = NA)
   readMeDir      <- file.path(Directory,"ReadMe", fsep = .Platform$file.sep)
   if(!file.exists(readMeDir)) dir.create(readMeDir)
   for(thisFile in 1:length(files)){
     
     X <- readLines(files[thisFile], n = 500)
      
     TxtLines     <- grep("%",X)
     
     if(length(TxtLines) >0){
        
       
       FileInformation$DataType[thisFile]   <- sub( "% Type: " ,"",X[grep("% Type:", X)])
       FileInformation$Version[thisFile]   <- sub( "% Version: " ,"",X[grep("% Version:", X)])
       FileInformation$Hash[thisFile]       <- sub("% Dataset Hash: ","",X[grep("% Dataset Hash:",X)])
       
       readme <- X[1:max(TxtLines)]
       readname <- FileInformation$Filename[thisFile]
       readname <- sub(".txt",".readme",readname)
       pathName <- file.path(dirname(files[thisFile]),"ReadMe",fsep =.Platform$file.sep)
       OutFile  <- file.path(pathName,readname, fsep= .Platform$file.sep)
       writeLines(readme,OutFile)
     }  
     
     write.table(FileInformation,file.path(Directory,"FileInfo.tab", fsep= .Platform$file.sep))
     
   }
  
  return(FileInformation)
}