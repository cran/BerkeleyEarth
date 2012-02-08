\name{readSiteSummary}
\alias{readSiteSummary}
 
\title{Reads Station Summary data
 
}
\description{Berkeley provides a variety of station data subsets.
 the summary file is the bare minimum requied by most methods.
 It includes the station Id, lat and lon and altitude
 
}
\usage{
readSiteSummary(Directory, filename = "site_summary.txt")
}
 
\arguments{
  \item{Directory}{Source directory for the file
 
}
  \item{filename}{default name is that provided by Berkeley:
   site_summary.txt
 
}
}
\details{ The core data for a station is read in. This includes
 Station Id, latitude longitude and altitude
 
}
\value{
  a dataframe is returned.
  \item{Id}{Station Id}
  \item{Lat}{Latitude}
  \item{Lon}{Longitude}
  \item{Altitude}{Elevation in meters}
  
  
  
}
 
\author{Steven Mosher
 
}
 
\keyword{ stationdata }
 
