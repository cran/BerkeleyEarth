makeBinFiles <- function(Directory = getwd()){
  
  
  dfiles <- list.files(getwd(),full.names = TRUE, recursive = TRUE, pattern= "data.txt" )
  dataDir <- dirname(dfiles)
  for(Thisdir in 1:length(dataDir)){
     print(dataDir[Thisdir])
     dataStart = Sys.time()
     print(dataStart)
     X<- readBerkeleyData(Directory = dataDir[Thisdir])
     
     print(Sys.time() - dataStart)
     
    
    
  }
  
  
  
}