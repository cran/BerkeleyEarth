\name{readBestData}
\alias{readBestData}
 
\title{Reads a text version of the Berkeley Earth Temperature data
 
}
\description{Berkeley Earth Surface temperature data is provided
 in text file format. The Temperature data is provided in a long
 thin file with missing months removed. Thus function will read
 that data and return one of two data structures: either a matrix
 with all data columns present or a 3D array of the temperature
 data. This array structure is the principle data structure used
 by the RghcnV3 package.
 
}
\usage{
readBestData(Directory, filename = "data.txt", output = "Array")
}
 
\arguments{
  \item{Directory}{ The full path to the directory holding the datafile
 
}
  \item{filename}{ the filename of the data. This defaults to the name
  given by the Berkeley group
 
}
  \item{output}{ setting this variable will control the data that is returned
   if "Array" is selected a 3D array is returned. If 'All' is selected then
   the adsition data such as number of observations is returned
 
}
}
\details{Berkeley earth data is presented in a 6 column format. The first
 column is the station Id ( 1- n), the second column is a series number.
 Some stations can have more than one series making up their history.
 The third column is the date. The date provided by Berkeley is the
 middle of the time period for the data. So for monthly data the middle
 of the month is used. 1950.042 is thus jan 1950. The fourth column
 is the uncertainty, the 5th is the number of observations and the 6th
 is the time of observations. Missing months are not represented in the data.
 If you specify output ="All" when calling the function you will get back
 a matrix with six columns. Every row is a station record. 
 If output = "Array", then the function will create a 3D array: The first
 dimension is the station Id, the second dimension is the month, and the
 3rd dimesion is the year. This data structure is compatible with RgchnV3.
 With this structure every station is padded out to have missing data or
 NA where there are missing months. This allows you to extract data from
 the array and create a time series object effortlessly. RghcnV3 also
 has function for turning this array structure into a multiple time series
 object: \code{asMts}
  
 
 
}
\value{ The returned value depends upon the slection for \code{output}.
 If output = "Array" a 3D array of the temperature values is returned.
 Because the stream of data is remapped to a large 3D array, this can
 take a few minutes. It also comsumes a large amount of memory. The
 other option is to set output ="All". This will return a six column
 matrix of the data. In this case the user will have to decide their
 own method for creating time series from the data. Missing months
 and missing days are not present in this data and one has to figure out
 which months and days are missing. The 3D array is contructed with complete
 dimnames; The first dimension is the station Id, second dimesion is
 months and the third dimension is years.
 
}
\references{ See the readme assocationed with this file. All readmes
 are included at the beginning of the datafile
 
}
\author{Steven Mosher
 
}
 

 

 
\examples{
 \dontrun{
  require(RghcnV3)
  Data <- readBestData(Directory = "Sample", filename = "data.txt", output ="Array")
  Data <- windowArray(Data, start = 1900, end = 2011)
  Data <- removeNaStations(Data)
  StationIds <- getStations(Data)
  SampleTs <- ts(Data[1, , ], start = min(as.integer(unlist(dimnames(Data)[3]))), frequency =12)
  
 }
}
 
\keyword{ datainput }
 
