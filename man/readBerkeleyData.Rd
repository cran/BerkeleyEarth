\name{readBerkeleyData}
\alias{readBerkeleyData}
 
\title{Reads Berkeley data
 
}
\description{The Berkeley Earth "data.txt" file conatins 7 variables:
  station Id, series number, date, temperature, uncertainty, observations
  and time of observation. Missing months are not present in this data.
  This function creates a filebacked matrix the first time you invoke
  it. After that, the filebacked matrix is attached and you get
  instant access to it. It has all 7 data items
 
}
\usage{
readBerkeleyData(Directory, filename = "data.bin")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Directory}{Directory where "data.txt' and "data.bin" are
    "data.bin" is created the first time the function is called.
}
  \item{filename}{"data.bin" thisfilename must be used.
   On first read and all subsequent reads. If you havent
   created the file, the function will create it
 
}
}
\details{ When you first use this function the file 'data.txt'
 will be read and the file "data.bin" will be created. On
 subsequent reads, data.bin is accessed. The filebacked
 matrix ( data.bin) will be written to Directory. The first
 use of this function will take about 10 minutes to run.
 Subsequent use gives you immediate access. All 7 variables
 are present. please note that missing months are not in the dataset.
 
 
}
\value{returns a 7 column matrix
 
}
 
\author{Steven Mosher> hat tip to charlotte Wickham for her
 code using bigmemory
 
}
\note{Always use "data.bin" even on the first use
 
}

 

\seealso{\code{readAsArray} and \code{ readBerkeleyTemp}
 
}
 
\keyword{inputdata }
 
