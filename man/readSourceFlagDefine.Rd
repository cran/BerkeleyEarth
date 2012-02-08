\name{readSourceFlagDefine}
\alias{readSourceFlagDefine}
 
\title{Reads the data source flags
 
}
\description{The Berkeley data is derived from a variety of
 sources. This file conatins the definitions of the source
 flags
 
}
\usage{
readSourceFlagDefine(Directory, filename = "source_flag_definitions.txt")
}
 
\arguments{
  \item{Directory}{Source directory of the file
 
}
  \item{filename}{ default filename provided by Berkeley:
   source_flag_definitions.txt
 
}
}
\details{ A two column file of the source code number and the
 source definition
 
}
\value{ A data.frame of two columns. The first column has the code
 number associated with the source. The second column is a text
 description of the source
 
}
\references{See the file readme at the head of the file
 
}
\author{Steven Mosher
 
}
 

 
\keyword{ inputdata }
\keyword{ definitions } 
