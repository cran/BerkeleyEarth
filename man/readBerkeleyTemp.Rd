\name{readBerkeleyTemp}
\alias{readBerkeleyTemp}
 
\title{reads Berkeley temperatures from the data.tx file
 
}
\description{This function reads the temperature data and converts
  it into a filebacked 2D matrix. because of the size of the data
  some users may not be able to read all the data in. This function
  reads the datafile (data.txt or data.bin if it exists ) and
  reformats it into a 2D array with stations in columns.
  It currently takes over 20 hours to do this, but a speed up
  is in the works. After this initial read, all subsequent reads
  are instant as a file connection is made.
 
}
\usage{
readBerkeleyTemp(Directory, tempFname = "temperature.bin")
}
 
\arguments{
  \item{Directory}{Directory where data.txt is located
 
}
  \item{tempFname}{ This is the filename of the file backed
   matrix. If it exists, the function returns access. If it
   doesnt exist then data.tx is read and the temperature.bin
   file is created. This takes a long time, but only
   has to be done once
 
}
}
\details{The function reads temperature.bin if it exists and
  creates it if it doesnt exist. The data is read in and
  missing months are added as NA. only temperature data is read
  in: observations, tobs, uncertainty are not read in
 
}
\value{A 2D matrix. Rows are time from 1701 to present. Columns
  are stations. dimnames are set so you can read the date
  from the row names and the station Id from the column names.
  
 
}
 
\author{Steven Mosher
 
}
\note{ Its slow now, but buffering should make it faster.
 Its slow on the very FIRST use because the new file
 temperature.bin is created. The second time its called
 access is immediate
 
}

 

\seealso{\code{readAsArray} and \code{readBerkeleyData}
 
}
 
\keyword{ inputdata }
 
