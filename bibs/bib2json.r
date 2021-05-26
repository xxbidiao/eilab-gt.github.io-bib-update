#install.packages('bibtex', repos = "http://cran.us.r-project.org")
#install.packages("handlr", repos = "http://cran.us.r-project.org")
#library("handlr")
#library("bibtex")
args = commandArgs(trailingOnly=TRUE)
#x <- HandlrClient$new(args[1])
#y <- x$read("bibtex")
#z <- x$write("citeproc")
#cat(z,file=args[2],sep="\n")

#install.packages("bib2df", repos = "http://cran.us.r-project.org")
dir.create("temp", recursive = TRUE)  # create personal library
.libPaths("temp")  # add to the path
install.packages("stringr", repos = "http://cran.us.r-project.org")
library(stringr)
library(dplyr)
library(jsonlite)
source("bib2df/helpers.R")
source("bib2df/bib2df_gather.R")
source("bib2df/bib2df_read.R")
source("bib2df/bib2df_tidy.R")
source("bib2df/bib2df.R")
#library(bib2df)
df <- bib2df(args[1])
j <- toJSON(df)
cat(j,file=args[2],sep="\n")