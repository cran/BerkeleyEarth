\name{makeBinFiles}
\alias{makeBinFiles}
 
\title{Creates "memory mapped" versions of 'data.txt'
 
}
\description{Every Berkeley Earth Folder has a main datafile named
  "data.txt" This function will create binary versions of that data
  which are must faster to access. It does this by simply calling
  \code{readBerkeleyData}. It is not necessary to run this function,
  but it is provided to give a simple way to create all the "data.bin"
  datasets for an entiore collection. It is also called automatically
  when files are downloaded using \code{downloadBerkeley}
 
}
\usage{
makeBinFiles(Directory = getwd())
}
 
\arguments{
  \item{Directory}{ The function should be called from your main working
   directory. The sub directories ( TAVG, TMIN, TMAX) and all the data
   directories below that will be scanned for instances of "data.txt".
   If data.bin does not exist, it will be created.
 
}
}
\details{ Instances of "data.txt" are found below the working directory
 and \code{readBerkeleyData} is executed to create a "data.bin" file
 
}
\value{Side effect is the creation of "data.bin" files
 
}
 
\author{Steven Mosher
 
}
 

 

 
\keyword{ filetools }
 