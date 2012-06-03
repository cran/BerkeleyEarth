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
Version: \tab 1.8\cr
Date: \tab 2012-06-03\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
LazyData: \tab FALSE\cr
}
 
}
\section{I Importing Data}{
 The functions provided here operate on the standard text formated files
 provided by the Berkely Earth Temperature Project. Some formating
 changes are made to the files to insure compatibility with functions
 in the package RghcnV3. In addition, missing values are all recoded
 to a standard R  "NA", as opposed to the Berkeley method of using
 large negative values, such as -9999. Before processing Berkeley 
 data it is suggested that the simple \code{setUp} function should be
 executed in the home directory for your studies. This creates a simple
 directory structure for various versions of the Berkeley dataset.
 Datasets are provided for TAVG, TMIN and TMAX, so these directories
 are created by \code{setUp}. In addition, the function 
 \code{downloadBerkeley} can be used to download all 15 versions of
 the dataset. There are 5 versions for each of TMIN, TMAX, and TAVG.
 
 The base dataset is refered to as the Multi-Value dataset. 
 This dataset contains all data  prior to merging and removal of duplicates.
 For most uses it is not necessary to use the multi-value file. Rather,
 one of the 4 single value files is recommended. 
 The other 4 datasets
 are all "single-valued" datasets: The datasets are categorized
 by two processes: Quality Control and Removal of Seasonality.
 So, there are 4 possibilities: No QC and non seasonal; No QC
 and seasonal; QC and non seasonal; QC and seasonal. 
 
 After File folders are downloaded and unzipped, the files can
 be read with the supplied functions. These functions all
 require variables defining the directory and the filename.
 filenames have been defaulted to correspond with the filenames
 provided by Berkeley.  
 }
 \section{II Details of reading data}{
 There are 3 main functions provideed for reading data. The multi value
 file can only be read with \code{readBerkeleyData}. In that file a
 given station can have multiple series reporting for a given month.
 However, \code{readBerkeleyData} can also be used on "single value"
 files. The dataset "data.txt" consists of 7 variables: the station Id,
 the series number, the data, the temperature, the uncertainty, the
 number of observations and the time of observation. Missing months
 are not present. When using this function a file.backed matrix will
 be created. This allows a smaller RAM footprint and fast access after
 the first read.
 The next two functions work exclsuively with single valued files. There
 are 4 varieties of these files depending upon whether QA has been performed
 or seasonality removed. In all cases however there is only one record
 or series per month. Both of these functions read in temperature data, date
 and station Id. The other 4 variables are not read in. The function
 \code{readAsArray} is designed to work with RghcnV3 functions and it
 outputs a 3D array. It also requires large amounts of RAM ( ~2Gb).
 The other function \code{readBerkeleyTemp} also reads in temperatures
 but it creates a file backed matrix. The matrix has a column for
 every station and row for every time. Both function fill in or pad the
 data with NA where there are missing months, so they consume more memory.
 \code{readBerkeleyTemp} takes between 2-3 hours to reprocess the data,
 but this only done one time. Subsequent calls to the function give
 immediate access to the file backed matrix. readBerkeleyTemp was
 removed in version 1.7. 
 
 
 }
 

 
 


\author{
 Steven Mosher

Maintainer: Steven Mosher <moshersteven@gmail.com>
 
}
\references{ \url{http://berkeleyearth.org/}
 
}
 
\section{Acknowledgements}{
  Special thanks to Richard Muller, Robert Rhode and the entire Berekeley Earth Team.
  Also, none of this work would be possible without the inspiration, encouragement
  and help of Steve McIntyre, Zeke Hausfather, Nick Stokes, Jeff Condon and RomanM
}
\section{ Contributors}{
  Special thanks to Dave Vavra for package testing and tips and Charlotte Wickham
  for sample code using bigmemory
}
 
\keyword{ package }
\keyword{ climate}
 
 
