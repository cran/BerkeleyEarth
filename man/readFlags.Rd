\name{readFlags}
\alias{readFlags}
 
\title{Read data quality flags
 
}
\description{A function to read the data quality flags associated
 with all the data elements in the Berkeley dataset. This function
 uses bigmemory to create a filebacked matrix the very first
 time it is called. Subsequent calls access the file backed matrix
 
}
\usage{
readFlags(Directory, filename = "flags.bin")
}
 
\arguments{
  \item{Directory}{ Source directory for the file
 
}
  \item{filename}{ The function uses the name flags.bin rather than
   flags.txt. The first time the function is called it will create
   flags.bin. It is an error to use a different name.
 
}
}
\details{ The flags data contains all the quality flags provided by
 the source data provider. This file is very large.
 
}
\value{

  \item{Id}{Station Id}
  \item{SeriesNo}{Temperature series number}
  \item{Date}{Date for the data in question}
  \item{Flag_1- Flag_24}{24 data flags}
 
}
\references{see the readme at the start of the file
 
}
\author{Steven Mosher
 
}
 

 
\keyword{ datainput }
 
 
