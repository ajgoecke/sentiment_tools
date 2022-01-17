library(R.utils)
library("rjson")
setwd("/Users/rike-/Documents/Studium/3 Semester/PM/Corpora")
dt<-R.utils::gunzip("goodreads_reviews_children.json.gz", remove=FALSE)
result <- fromJSON(file = "goodreads_reviews_children.json.gz")

