\name{readDataWithInv}
\alias{readDataWithInv}
 
\title{Read Data for selected Inventory
 
}
\description{For applications where the entire inventory is not required it
 can speed up the execution if you merely read only those stations required.
 This involves first creating an inventory of stations and then using that
 as a parameter to the function. The "bin" file is read and only those stations
 required are returned. 
 
}
\usage{
readDataWithInv(Directory, Inventory, filename = "data.bin")
}
 
\arguments{
  \item{Directory}{ Directory where the data.bin file is located
 
}
  \item{Inventory}{A valid inventory of Berkeley Earth Stations
 
}
  \item{filename}{ Defaults to "data.bin" which is the source data
    stored in a filebacked matrix
 
}
}
\details{For applications where memory is limited or only a subset of stations
  are required this function will return a "Mts" object of the temperature
  data. The function is fed an inventory, the file backed matrix is read
  and only those stations in the inventory are selected.  The data is
  returned as a "Mts" object "asArray" or asZoo can be used to reformat
  the object if required. Stations with all NA are removed. The dataset
  may have leading or trailing NA for all stations so  findStartEnd()
  should be used along with "window" before analyzing the data.
 
}
\value{Returns a Mts object with Station Ids as column names and time in
  rows. The "mts" object can be passed to any function that a normal
  time series can be passed to.
 
}
 
\author{Steven Mosher
 
}
 

 
 
\keyword{ filetools }
 
