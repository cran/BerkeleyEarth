\name{setUp}
\alias{setUp}
 
\title{directory set up function
 
}
\description{Creates a directory structure under the working directory
 to organize Berkeley data. Berkeley provides 5 file types.
 A multiple source file and 4 single values files. Single value
 refers to the fact that duplicates have been removed. So the single value
 files all descend from the multiple value files.
 Single value files come in 4 varities: with and without QC and with and
 without seasonality removed. 
 
}
\usage{
setUp()
}
 
\details{ Creates a directory structure that files should be copied
 into. 
 
}
\value{Has the side effect of creating a directory structure
 
}
 
\author{Steven Mosher
 
}
 
 
\keyword{ definitions }
 