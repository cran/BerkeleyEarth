\name{readBerkeleyTemp}
\alias{readBerkeleyTemp}
 
\title{reads Berkeley temperatures from the data.txt file
 
}
\description{This function reads the temperature data from all 4
  varities of SINGLE VALUE data files and converts
  them into a filebacked 2D matrix. It will not work
  with "multi-value" versions of data.txt or data.bin. Those
  files should be read with \code{readBerkeleydata}. 
  Because of the size of the data some users may not be able 
  to read all the data in. This function
  reads the datafile (data.txt or data.bin if it exists ) and
  reformats it into a 2D array with stations in columns.
  It currently takes over 2 hours to do this.
  After this initial read, all subsequent reads
  are instant as a file connection is made.Note the file does have
  columns for all stations even if they have no data. 
  Errors are thrown if you supply a file name that is not .bin.
  Errors are also thrown if you try to execute this function on
  multi-value files.
 
}
\usage{
readBerkeleyTemp(Directory, buffer = 5e+05, tempFname = "temperature.bin")
}
 
\arguments{
  \item{Directory}{Directory where data.txt is located
 
}
  \item{buffer}{ buffer is set to 500000. This controls the size
    of the buffer matrix. Data is read from the file to the buffer
    matrix. The buffer matrix is traversed and written to the
    file backed maxtrix. After every buffer write the flush command
    is invoked to flush the values to the file. This balances speed
    versus RAM consumed during reads. }
  \item{tempFname}{ This is the filename of the file backed
   matrix. If it exists, the function returns access. If it
   doesnt exist then data.txt is read and the temperature.bin
   file is created. This takes a long time, but only
   has to be done once. It is an error to use a filename that
   does not end in .bin. To differentiate this file from data.bin
   it is given th default name of temperature.bin since it only
   contains temperature and not the other elements in data.txt
   and data.bin
 
}
}
\details{The function reads temperature.bin if it exists and
  creates it if it doesn't exist. The data is read in and
  missing months are added as NA. Only temperature data is read
  in: observations, tobs, uncertainty are not read in. Do not
  try to use this function on multi-value files. Those should
  be read with \code{readBerkeleyData} as every station has
  multiple series.
 
}
\value{A 2D matrix. Rows are time from 1701 to present. Columns
  are stations. Dimnames are set so you can read the date
  from the row names and the station Id from the column names.
  
 
}
 
\author{Steven Mosher
 
}
\note{ You can play with buffering, at buffer =1 the file
 takes 21 hours. At 500000 this was reduced to 2 hours.
 It's slow on the very FIRST use because the new file
 temperature.bin is created. The second time its called
 access is immediate.
 
}

 

\seealso{\code{readAsArray} and \code{readBerkeleyData}
 
}
 
\keyword{ inputdata }
 
