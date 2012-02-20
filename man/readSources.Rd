\name{readSources}
\alias{readSources}
 
\title{Read the data sources file
 
}
\description{The sources file contains the station Id, series number
 date and list of sources for the data element. A file backed big matrix
 is created the first time the function is called.
 
}
\usage{
readSources(Directory, filename = "sources.bin")
}
 
\arguments{
  \item{Directory}{Source directory for the file
 
}
  \item{filename}{ The source file is named sources.txt. This
   function expects "sources.bin" as a name. On first use
   "sources.bin" will not exist and the function will create it.
    On every use after that the function attaches a filebacked matrix
 
}
}
\details{ The data file consists of rows of data for every
 data record. The station Id, the series number, the date and the
 list of sources for the data. Because the file is large a filebacked matrix is created
 the first time the function is called. This will take some time.
 On future calls to the function the file is attached instantly.
 
}
\value{ returns a matrix with columns as listed below

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
 
