\name{readFlagDefine}
\alias{readFlagDefine}
 
\title{Read the data flag definitions
 
}
\description{ The berkeley data has associated data quality flags that
 are taken from the source datafiles. This function reads those
definitions and the constants associated with them.
 
}
\usage{
readFlagDefine(Directory, filename = "data_flag_definitions.txt")
}
 
\arguments{
  \item{Directory}{Directory where the file is located
 
}
  \item{filename}{Defaulted to the Berkeley standard name.
 
}
}
\details{The source files used by Berkeley typically
 some with data quality flags. This file consolidates
the definitions of all the flags used by sources
 
}
\value{ Returns a data.frame of a flag code and flag definition.
 the "flags.txt" file contains the actual data. And definitions
 are used to decribe the flags
 
}
\references{ see the readme at the start of the file
 
}
\author{Steven Mosher
 
}
 

 
 
\keyword{ datainput }
\keyword{ definitions } 
