\name{readStationChange}
\alias{readStationChange}
 
\title{read station changes
 
}
\description{This function reads the station change file and returns
 a dataframe
 
}
\usage{
readStationChange(Directory, filename = "station_change.txt")
}
 
\arguments{
  \item{Directory}{ Directory where the source file is
 
}
  \item{filename}{default name provided by Berkeley:"station_change.txt"
 
}
}
\details{ Station moves are documented in the station change file.
 The file contains the station Id, the number of changes, the
 date and the change type
 
}
\value{Returns a data.frame
 
}
\references{See the readme in the file header
 
}
\author{Steven Mosher
 
}
 

 
\keyword{ stationdata }
 
