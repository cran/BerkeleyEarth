\name{readAsArray}
\alias{readAsArray}
 
\title{reads berkeley data and returns a 3D array
 
}
\description{This function will return a 3D array of stations, months
 and years. If you are working with less than 4GB of RAM it will be a 
 tight fit into memory.
 The 3D array is used by RghcnV3 functions. In future releases this
 will be upgraded to create a file backed matrix on initial read.
 
}
\usage{
readAsArray(Directory, filename = "data.txt")
}
 
\arguments{
  \item{Directory}{Directory where the file is located. Use
   \code{choose.dir() as a simple way to get the directory}
 
}
  \item{filename}{ default name is "data.tx" Changing this is
    not recommended
 
}
}
\details{The function reads the temperature file and returns
 a 3D array in RAM. dimension 1 is the station, dimension 2
 is months and dimension 3 is years. Dimnames are set
 This data structure is used in RghcnV3 so the data can be
 "windowed", "anomalized" or fed through the least squares
  algorithms. 
 
}
\value{Returns a 3D array
 
}
 
\author{Steven Mosher
 
}
\note{All of the Berkeley data takes up around 1.5GB so working
 with it all in RAM requires a good machine and careful memory
 management.}
 

\seealso{ see \code{readBerkelyData} and \code{readBerkeleyTemp}
 
}
 
\keyword{ inputdata }
 
