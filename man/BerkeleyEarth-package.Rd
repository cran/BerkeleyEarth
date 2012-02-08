\name{BerkeleyEarth-package}
\alias{BerkeleyEarth-package}
\alias{BerkeleyEarth}
\docType{package}
\title{Berkeley Earth Surface Temperature
 
}
\description{ A collection of functions aimed at emulating the Berkeley
 earth Surface Temperature project. Initial versions (1.0) aim at providing
 the core functions for importing the various Berkeley earth data files
 for both temperature data and station lists and core metadata. Future
 versions will provide R emulations of the Berkeley algorithms.
 
}
\details{
\tabular{ll}{
Package: \tab BerkeleyEarth\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2012-02-07\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
LazyData: \tab FALSE\cr
}
 
}
\section{I Importing Data}{
 The functions provided here operate on the stabdard text formated files
 provided by the Berkely Earth Temperature Project. Some formating
 changes are made to the files to insure compatibility with functions
 in the package RghcnV3. In addition missing values are all recoded
 to a standard R  "NA", as opposed to the Berkeley method of using
 large negative values, such as -9999. Before processing Berkeley 
 data it is suggested that the simple \code{setUp} function should be
 executed in the home directory for your studies. This creates a simple
 directory structure for various versions of the Berkeley dataset.
 There are 5 different versions of the data. The base dataset is
 refered to as the Multi-Value dataset. This dataset contains all data
 prior to merging and removal of duplicates. The other 4 datasets
 are all "single-valued" datasets: The datasets are categorized
 by two processes: Quality Control and Removal of Seasonality.
 So, there are 4 possibilities: No QC and non seasonal; No QC
 and seasonal; QC and non seasonal; QC and seasonal.\code{setUp}
 merely creates a directory tree to reflect this and files can
 be copied to the appropriate sub directory.
 
 After File folders are downloaded and unzipped, the files can
 be read with the supplied functions. These functions all
 require variables defining the directory and the filename.
 filenames have been defaulted to correspond with the filenames
 provided by Berkeley. 
 

}
 


\author{
 Steven Mosher

Maintainer: Steven Mosher <moshersteven@gmail.com>
 
}
\references{ \url{http://berkeleyearth.org/}
 
}
 
\section{Acknowledgements}{
  Special thanks to Richard Muller, Robert Rhode and the entire Berekely Earth Team.
  Also, none of this work would be possible without the inspiration, encouragement
  and help of Steve McIntyre, Zeke Hausfather, Nick Stokes, Jeff Condon and RomanM
}
 
\keyword{ package }
\keyword{ climate}
 
 
