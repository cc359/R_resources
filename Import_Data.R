setwd("C:/Users/Chris Cooper/Desktop/")

DataSourceFilename = "Test_Data.csv"
FirstLineIsColumnNames = TRUE
Separator = ","

DataFrame=RawDataFrame = read.table( file=DataSourceFilename,
header=FirstLineIsColumnNames, sep=Separator,quote="\"", dec=".", 
row.names=NULL, as.is=FALSE, na.strings="NA", colClasses=NA, nrows=0, skip=0,
check.names=FALSE,fill=TRUE, strip.white=TRUE, blank.lines.skip=TRUE, 
comment.char="",allowEscapes=FALSE, flush=FALSE,stringsAsFactors=TRUE,
fileEncoding="", encoding="unknown")

fix(DataFrame)

boxplot(DataFrame$Confidence_Rating, horizontal=TRUE,main="Distribution of Confidence Ratings", ylab="Confidence Rating")