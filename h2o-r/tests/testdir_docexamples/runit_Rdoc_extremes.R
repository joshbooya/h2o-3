setwd(normalizePath(dirname(R.utils::commandArgs(asValues=TRUE)$"f")))
source("../../scripts/h2o-r-test-setup.R")



test.rdocextremes.golden <- function() {


ausPath = locate("smalldata/extdata/australia.csv")
australia.hex = h2o.uploadFile(path = ausPath, destination_frame = "australia.hex")
min(australia.hex)
min(australia.hex[,1:4], australia.hex[,5:8], na.rm=FALSE)



}

doTest("R Doc Extremes", test.rdocextremes.golden)

