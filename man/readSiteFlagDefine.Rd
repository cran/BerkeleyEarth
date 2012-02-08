\name{readSiteFlagDefine}
\alias{readSiteFlagDefine}
 
\title{Read the site flag definitions
 
}
\description{ This function reads the site flag definitions.
 As an example, here are some sample flags:
     1:  Station is known to have been relocated
     2:	Changing location with time suggests possible relocation
     3:	Conflicting locations from different sources
     4:	Station location conflict greater than 15 km
     6:	Multiple sources reported this site
     7:	Multiple names associated with this site
 
}
\usage{
readSiteFlagDefine(Directory, filename = "site_flag_definitions.txt")
}
 
\arguments{
  \item{Directory}{Source directory for the file
 
}
  \item{filename}{default filename provided by Berkeley
 
}
}
 
\value{ The function returns a data.frame of flag definitions
 for the sites.
 
}
\references{See the readme at the start of the file
 
}
\author{Steven Mosher
 
}
 

 
\keyword{ stationdata }
\keyword{ definitions } 
