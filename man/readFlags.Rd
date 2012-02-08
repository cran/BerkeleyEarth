\name{readFlags}
\alias{readFlags}
 
\title{Read data quality flags
 
}
\description{A function to read the data quality flags associated
 with all the data elements in the Berkeley dataset.
 
}
\usage{
readFlags(Directory, filename = "flags.txt")
}
 
\arguments{
  \item{Directory}{ Source directory for the file
 
}
  \item{filename}{ defaults to the filename provided in the Berkeley
   download: "flags.txt"
 
}
}
\details{ The flags data contains all the quality flags provided by
 the source data provider. This file is very large.
 
}
\value{

  \item{Id}{Station Id}
  \item{SeriesNo}{Temperature series number}
  \item{Date}{Date for the data in question}
  \item{Flag_1- Flag_19}{19 data flags}
 
}
\references{see the readme at the start of the file
 
}
\author{Steven Mosher
 
}
 

 
\keyword{ datainput }
 
 
