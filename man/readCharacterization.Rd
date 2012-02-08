\name{readCharacterization}
\alias{readCharacterization}
 
\title{Reads Data Characterization file
 
}
\description{ reads the datafile named "data_characterization" and returns
 a dataframe.
 
}
\usage{
readCharacterization(Directory, filename = "data_characterization.txt")
}
 
\arguments{
  \item{Directory}{Directory where the file is stored
 
}
  \item{filename}{defaults to the standard filename provided in the zip files
   from Berkeley: "data_characterization.txt"
 
}
}
\details{ The data characterization file contains data that is a snapshot
 of the data for every stations. It includes the following kinds of statistics
 earliest record, last record, means, medians, max, min.
 
}
\value{The function returns a data.frame with the following columns

   \item{Id}{Station Id}
   \item{SeriesNo}{some stations have multiple data series}
   \item{DataPoints}{number of data points}
   \item{EarlyDate}{earliest date}
   \item{MostRecent}{most recent date}
   \item{UniqueTimes}{number of unique time periods reported}
   \item{MissingVals}{number of missing values}
   \item{TOBvaluesKnown}{Time of observation values}
   \item{UnderlyingVal}{The number of underlying values. For monthly values
          this would be the number of days reporting}
   \item{Max}{Maximum Value}
   \item{Min}{Minimum Value}
   \item{Mean}{Mean value}
   \item{Median}{Median Value}
   \item{FrstQrtl}{First Quartile}
   \item{LastQrtl}{last Quartile}
   \item{Sdev}{Standard Deviation}
   \item{BadFlags}{number of values that fail QC}
    
   
      
}
\references{ See the readme at the start of the file
 
}
\author{Steven Mosher
 
}
 
 
 
\keyword{ datainput }
 
