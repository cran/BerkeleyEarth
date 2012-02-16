\name{downloadBerkeley}
\alias{downloadBerkeley}
 
\title{downloads Berkeley Datasets
 
}
\description{This function downloads the entire Berkeley dataset
 into 3 directories: a TAVG, TMIN, and TMAX directory structure.
 If those directories do not exist, they are created by calling
 the \code{setUp()} function. All the files are downloaded and unzipped
 
}
\usage{
downloadBerkeley(urls = BerkeleyUrls)
}
 
\arguments{
  \item{urls}{ The BerkeleyUrls is a data.frame of urls and
   names for the zip files. You can subset this data.frame
   if you dont want to download he entire batch
 
}
}
\details{The urls dataframe has the urls for all the Berkeley
 data and has a column for the names of the zip files.
 The TAVG, TMIN, TMAX directories are created if necessary
 and the zip files are unpacked to folders with the correct
 names. Its advised that you not change
 
}
\value{Side effect is the creation of directories, downloading files,
 and unpacking the zips
 
}
 
\author{Steven Mosher
 
}
 

 

 
 
\keyword{ inputdata }
\keyword{ filetools } 
