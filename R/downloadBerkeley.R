downloadBerkeley <- function(urls = BerkeleyUrls){
  
  setUp()
   
  for(thisUrl in 1:nrow(urls)){
    zipFile <-  urls$Zip[thisUrl] 
    destDir <- substr(dirname(urls$Url[thisUrl]),
                      nchar(dirname(urls$Url[thisUrl]))-3,
                      nchar(dirname(urls$Url[thisUrl])))
    download.file(urls$Url[thisUrl], 
                  destfile= file.path(destDir,
                                      zipFile, fsep= .Platform$file.sep), mode = "wb")
    Xtract <- sub(".zip","",zipFile)
     
    unzip(file.path(destDir,
                    zipFile,fsep= .Platform$file.sep),
          exdir= file.path(destDir,
                           Xtract,fsep= .Platform$file.sep) )
    
  }
  
  makeBinFiles()
  
  
}