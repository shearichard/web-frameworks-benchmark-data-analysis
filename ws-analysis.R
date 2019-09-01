#Experimental script to see if I can take a HTML table showing webserver benchmark
#results; import it into R and output visualisations of the data
#
#I'm partly basing this script on https://stackoverflow.com/questions/22037122/importing-html-table
#
#It's making use of the htmltab package : https://cran.r-project.org/web/packages/htmltab/vignettes/htmltab.html
#
#The XPath used in the `which` argument of `htmltab` was created from the Chrome Dev tools. You
#can check a XPath in the Dev Tools console by executing 
#
#$X("//*[@id='readme']/div[3]/article/table[1]")
#
#
#This script makes use of strsplit - https://stat.ethz.ch/R-manual/R-devel/library/base/html/strsplit.html
library(htmltab)
#Latency
url="https://github.com/the-benchmarker/web-frameworks/"
latency=htmltab(doc = url, which = "//*[@id='readme']/div[3]/article/table[1]")
print(latency)
#Requests/Second
reqs_per_sec=htmltab(doc = url, which = "//*[@id='readme']/div[3]/article/table[2]")
print(reqs_per_sec)
#Begin to put the data into the shape I want it
for (i in 1:nrow(latency)){
  row <- latency[i,]
  #lstlangver <- strsplit(as.character(row[1]), "(", fixed=TRUE)
  #lstlangver <- strsplit(as.character(row[1]), "(", fixed=TRUE)
  lstlangver <- unlist(strsplit(row[[1]], "(", fixed=TRUE))
  lang <- trimws(lstlangver[1])
  ver <- trimws(lstlangver[2])
  ver <- gsub(")", "", ver)
  print(lang)
  print(ver)
  print("")
}

