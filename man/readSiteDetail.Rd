\name{readSiteDetail}
\alias{readSiteDetail}
 
\title{Reads Station detail information
 
}
\description{the berkeley system provides several subsets
 of the complete station information. The detail file contains
 location information, country information and Id information.
 It has less detail than the complete dataset and more
 than the summary
 
}
\usage{
readSiteDetail(Directory, filename = "site_detail.txt")
}
 
\arguments{
  \item{Directory}{Source directory for the file
 
}
  \item{filename}{Default name provided by Berkeley:site_detail.txt
 
}
}
\details{ The function reads the file and replaces Berkeley values
 for missing data with standard R value of NA.
 
}
\value{
Standard R "NA" is used instead of the Berkeley system of using
  negative numbers and blank fields. values such as "[missing]"
  are also replaced by NA. Values like "[conflict]" are left
  as is. A data.frame is returned with the following columns.
  
   \item{Id}{Station Id}   
   \item{Lat}{Station latitude}
   \item{Lon}{Station longitude}
   \item{Name}{Station name}
    \item{Altitude}{Station elevation in meters}
    \item{LatUnc}{latitude uncertainty}
   \item{LonUnc}{longitude uncertainty}
   \item{AltUnc}{elevation uncertainty}
   \item{Country}{Station country}
   \item{State}{State}
   \item{County}{County}
   \item{Tzone}{Station Time zone}
   \item{WMO}{WMO Id}
   \item{COOP}{COOP Id}
   \item{WBAN}{WBAN Id}
   \item{ICOA}{ICOA Id}
   \item{Relo}{Number of relocations}
   \item{SugRelo}{Suggested relocations}
   \item{Sources}{source of data}   
   \item{Hash}{station metadata hash}
}
\references{See the file readme at the start of the file
 
}
\author{Steven Mosher
 
}
 
 
\keyword{ stationdata }
 
