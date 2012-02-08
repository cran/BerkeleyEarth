setUp <-function(){ 

MULTI_DIR       <- "Multi_valued"
SINGLE_DIR      <- "Single_valued"
SEASONAL_DIR    <- "Seasonal"
NONSEASONAL_DIR <- "NonSeasonal"
QC_DIR          <- "QUALITY_CONTROLLED"
NO_QC_DIR       <- "No_ QC"

if(!file.exists(MULTI_DIR)) dir.create(MULTI_DIR)
if(!file.exists(SINGLE_DIR)) dir.create(SINGLE_DIR)
fork1 <- file.path(SINGLE_DIR,QC_DIR, fsep = .Platform$file.sep)
fork2 <- file.path(SINGLE_DIR,NO_QC_DIR, fsep = .Platform$file.sep)
if(!file.exists(fork1)) dir.create(fork1)
if(!file.exists(fork2)) dir.create(fork2)
fork3 <- file.path(fork1,SEASONAL_DIR, fsep = .Platform$file.sep)
fork4 <- file.path(fork1,NONSEASONAL_DIR, fsep = .Platform$file.sep)
fork5 <- file.path(fork2,SEASONAL_DIR, fsep = .Platform$file.sep)
fork6 <- file.path(fork2,NONSEASONAL_DIR, fsep = .Platform$file.sep) 
if(!file.exists(fork3)) dir.create(fork3)
if(!file.exists(fork4)) dir.create(fork4)
if(!file.exists(fork5)) dir.create(fork5)
if(!file.exists(fork6)) dir.create(fork6)

}

