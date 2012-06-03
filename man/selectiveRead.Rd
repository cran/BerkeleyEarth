\name{selectiveRead}
\alias{selectiveRead}
 
\title{ Reads data for a selected month
 
}
\description{ For some applications the user only wants to read in
 all July data and only July data. This function allows the user
 to scan all stations and all months and only return a selected Month
 
}
\usage{
selectiveRead(Directory, Month = 7, file = "data.bin")
}
 
\arguments{
  \item{Directory}{ The directory the data file is in
 
}
  \item{Month}{ a month of the year as an integer
 
}
  \item{file}{ reads in the default data file 
 
}
}
\details{ The function  accesses the file backed matrix and
  returns records for  every station for the user selected
  month
 
}
\value{ Returns a matrix of Id, Data, and Temperature.
  The date is given as the middle of the selected Month
 
}
 
\author{Steven Mosher
 
}
\note{ This will be improved to include retrieving "seasons"
 such as  c(1,2,3)
 
}

 
 
\keyword{ file tools }
 
