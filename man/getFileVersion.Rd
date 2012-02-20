\name{getFileVersion}
\alias{getFileVersion}
 
\title{ get the file version
 
}
\description{Berkeley earth data comes in several versions.
  These version descriptions are contained in the 4th line of the
  file comments. This function get that data and returns it.
 
}
\usage{
getFileVersion(filename)
}
 
\arguments{
  \item{filename}{ filename of the file. Should end in txt.
   should be a fully qualified filename.
 
}
}
\details{ Function simply reads in the first few lines and returns
 the file version from the comment lines
 
}
\value{ Returns a string with a description of the file type:
 multi value, single value, etc.
 
}
\references{See the read me
 
}
\author{Steven Mosher
 
}
 

 
 
\keyword{filetools }
 
