readSiteComplete  <- function(Directory, filename= "site_complete_detail.txt") {
  
 
  
  X <- read.delim(file.path(Directory,filename, fsep = .Platform$file.sep), 
                  skip = 207, 
                  quote ="", 
                  stringsAsFactors = FALSE)
  
  colnames(X)<- c("Id","ReportNo","Name", "Country","StartDate","EndDate","Source", 
                   "Lat","Lon" ,"Altitude" ,"AltElevation","LatUnc","LonUnc","AltUnc",
                  "ReloFlag","State","County","Tzone","WMO","COOP","WBAN","ICOA",
                  "USAF","NCDC","Instrument","OtherId","ArchiveKey","Hash")
  
  X$Lat[X$Lat < -999]              <- NA
  X$Lon[X$Lon < -999]              <- NA
  X$Altitude[X$Altitude == -999]   <- NA
  X$AltElevation[X$AltElevation == -999]   <- NA
  X$StartDate[X$StartDate == -9999] <-NA
  X$EndDate[X$EndDate == -9999] <-NA
  X$LatUnc[X$LatUnc == -9.99999]   <- NA
  X$LonUnc[X$LonUnc == -9.99999]   <- NA
  X$AltUnc[X$AltUnc == -9.99999]   <- NA
  X$Tzone[X$Tzone == -99]          <- NA
  X$WMO[X$WMO == -9999]            <- NA
  X$COOP[X$COOP == -9999]          <- NA
  X$WBAN[X$WBAN == -9999]          <- NA
  X$USAF[X$USAF == -9999]          <- NA
  X$ICOA[X$ICOA == "      "] <- NA
  X$State[X$State == "            "]  <-NA
  X$Country[X$Country == "[Missing]                               "] <- NA
  X$County[X$County == "                    "] <- NA
  
  
  
  return(X)
  
}