\name{getFileInformation}
\alias{getFileInformation}
 
\title{A function to get file information
 
}
\description{ The Berkeley txt files are created from Matlab. The begining
 of most the files is actually the readme for the file. The readme
 contains information about the data type and data hash. Since nearly
 all of the files begin with comments, R functions must skip over lines to start
 reading the data. This function dtermines how many lines must be skipped
 Also, this function will strip out the readme portion of the file and create
 a separate readme for each file
 
}
\usage{
getFileInformation(Directory)
}
 
\arguments{
  \item{Directory}{The directory that contains the files you want information on
 
}
}
\details{ The function reads all the files in the directory
 and selects those with a .txt extension. The first 500
 lines of the file are read to uncover how many lines need to 
 skipped when the data is read in by itself. Also, the hash
 and datatype are collected as well. The function stores
 the data in a dataframe and writes that dataframe out to the 
 Directory as "FileInfo.tab". In addition seperate "readme"
 files are created for each of the datafiles. This way
 you dont have to open a large file in a text reader to read
 the readme.
 
}
\value{Side effects consist of writing several new files to the directory
 
}
 
\author{Steven Mosher
 
}
 

 
 
\keyword{ filetools }
 
