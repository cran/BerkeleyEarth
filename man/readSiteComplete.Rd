\name{readSiteComplete}
\alias{readSiteComplete}
 
\title{reads the file conatin the complete site data
 
}
\description{Berkeley makes various subsets of the site data
 available. This datset is the complete dataset with all the
 data in one place. 
 
}
\usage{
readSiteComplete(Directory, filename = "site_complete_detail.txt")
}
 
\arguments{
  \item{Directory}{Source directory for the data
 
}
  \item{filename}{default value is the name supplied
  by Berkeley: "site_complete_detail.txt"
 
}
}
\details{ This datafile compiles all the site information in one file.
 data elements are listed below
 
}
\value{
  Standard R "NA" is used instead of the Berkeley system of using
  negative numbers and blank fields. values such as "[missing]"
  are also replaced by NA. Values like "[conflict]" are left
  as is. A data.frame is returned with the following columns.
  
   \item{Id}{Station Id}
   \item{ReportNo}{report number}
   \item{Name}{Station name}
   \item{Country}{Station country}
   \item{StartDate}{Station start date}
   \item{EndDate}{Station end date}
   \item{Source}{source of data}
   \item{Lat}{Station latitude}
   \item{Lon}{Station longitude}
   \item{Altitude}{Station elevation in meters}
   \item{AltElevation}{alternative elevation}
   \item{LatUnc}{latitude uncertainty}
   \item{LonUnc}{longitude uncertainty}
   \item{AltUnc}{elevation uncertainty}
   \item{ReloFlag}{relocations}
   \item{State}{State}
   \item{County}{County}
   \item{Tzone}{Station Time zone}
   \item{WMO}{WMO Id}
   \item{COOP}{COOP Id}
   \item{WBAN}{WBAN Id}
   \item{ICOA}{ICOA Id}
   \item{USAF}{USAF Id}
   \item{NCDC}{NCDC Id}
   \item{Instrument}{reserved}
   \item{OtherId}{Other Station Id}
   \item{ArchiveKey}{archive key}
   \item{Hash}{station metadata hash}
    
   
    
}
\references{see the readme at the start of the file
 
}
\author{Steven Mosher
 
}
 

 
 
 
\keyword{ stationdata }
 
