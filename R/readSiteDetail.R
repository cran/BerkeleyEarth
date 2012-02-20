readSiteDetail <- function(Directory, filename= "site_detail.txt"){ 

   
   X <- read.delim(file.path(Directory,filename, fsep = .Platform$file.sep), 
                   comment.char= "%", 
                   quote ="", 
                   stringsAsFactors = FALSE,header = FALSE)

   colnames(X)<- c("Id","Name", "Lat","Lon" ,"Altitude" ,"LatUnc","LonUnc","AltUnc",
                 "Country","State","County","Tzone","WMO","COOP","WBAN","ICOA",
                   "Relo","SugRelo","Sources","Hash")

   X$Lat[X$Lat == -999]              <- NA
   X$Lon[X$Lon == -999]              <- NA
   X$Altitude[X$Altitude == -999]   <- NA
   X$LatUnc[X$LatUnc == -9.99999]   <- NA
   X$LonUnc[X$LonUnc == -9.99999]   <- NA
   X$AltUnc[X$AltUnc == -9.99999]   <- NA
   X$Tzone[X$Tzone == -99]          <- NA
   X$WMO[X$WMO == -9999]            <- NA
   X$COOP[X$COOP == -9999]          <- NA
   X$WBAN[X$WBAN == -9999]          <- NA
   X$ICOA[X$ICOA == "            "] <- NA
   X$State[X$State == "            "]  <-NA
   X$Country[X$Country == "[Missing]                               "] <- NA
   X$County[X$County == "                    "] <- NA
   
   X <- X[,c(1,3,4,2,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)]

 return(X)

}
 