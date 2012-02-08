\name{readSources}
\alias{readSources}
 
\title{Read the data sources file
 
}
\description{The sources file contains the station Id, series number
 date and list of sources for the data element
 
}
\usage{
readSources(Directory, filename = "sources.txt")
}
 
\arguments{
  \item{Directory}{Source directory for the file
 
}
  \item{filename}{DEfault filename provided by Berkeley:
   Sources.txt
 
}
}
\details{ The data file consists of rows of data for every
 data record. The station Id, the series number, the date and the
 list of sources for the data
 
}
\value{ returns a data.frame with columns as listed below

 \item{Id}{Station Id}
 \item{SeriesNo}{Series number}
 \item{Date}{Date for the data}
 \item{Flag_1-Flag_9}{Up to 9 sources per data item}
 
}
\references{see the file readme
 
}
\author{Steven Mosher
 
}
 
\keyword{ inputdata }
 
