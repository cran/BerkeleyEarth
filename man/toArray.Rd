\name{toArray}
\alias{toArray}
 
\title{ toArray transforms a matrix to a 3D array
 
}
\description{ A function for transforming a 2D matrix of Berkeley Earth
 monthly data into a 3D array of data
 
}
\usage{
toArray(dataIn, startYear = 1900, endYear = 2011)
}
 
\arguments{ 
  \item{dataIn}{ A dataframe or a matrix, such as a big matrix, with
  columns of Id, Date, and Temp. The standard Berkeley format for
  temperature data is has 5 columns: Id, Date, Temp, uncertainity
  and Time of observation. This function requires Berkeley monthly
  date format to work properly
 
}
  \item{startYear}{ The first year of data. All prior years are trimmed
 
}
  \item{endYear}{ The last year. All following years are trimmed
 
}
}
\details{For many applications the Berkeley dataset is larger than it
 needs to be. Temperatures exist for a few stations back to 1701.
 This function is provided to allow the user to read just a portion
 of the data and turn it into a 3D array. Since the date format
 of berkeley data is unique ( the middle of a month is reported)
 this routine will only work on Berkeley formated data
 
}
\value{Returns a 3D array
 
}
 
\author{Steven Mosher
 
}
 

 
\keyword{ Timeseries }
 
