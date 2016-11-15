src <- read.csv(file = "C:/Users/Sam/Desktop/source.csv")
splitted <- strsplit(as.character(src$ORIGINAL_TEXT),"[.,_]")
for(i in 1:length(splitted))
{
  temp <- unlist(splitted[i])
  temp <- temp[temp !="MODE"]
  temp <- temp[temp !="TO"]
  splitted[i] <- list(temp)
}
zz <- file("C:/Users/Sam/Desktop/target.txt","w")
for(i in 1:length(splitted))
{
  temp <- unlist(splitted[i])
  writeLines(temp,con = zz,sep="\t")
  writeLines("",con=zz)
}
close(zz)