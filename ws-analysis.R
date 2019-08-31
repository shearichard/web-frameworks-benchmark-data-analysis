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
library(htmltab)
url="https://github.com/the-benchmarker/web-frameworks/"
times=htmltab(doc = url, which = "//*[@id='readme']/div[3]/article/table[1]")
print(times)

