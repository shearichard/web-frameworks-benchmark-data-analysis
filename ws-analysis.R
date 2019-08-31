#Experimental script to see if I can take a HTML table showing webserver benchmark
#results; import it into R and output visualisations of the data
#
#I'm partly basing this script on https://stackoverflow.com/questions/22037122/importing-html-table
#
#It's making use of the htmltab package : https://cran.r-project.org/web/packages/htmltab/vignettes/htmltab.html
#
library(htmltab)
#url = "http://christianrubba.com/cran/htmltab/vignette/Demography%20of%20the%20United%20Kingdom%20-%20Wikipedia.html"
#ukLang = htmltab(doc = url, which = "//th[text() = 'Ability']/ancestor::table")
#print(uklang)
url="https://github.com/the-benchmarker/web-frameworks/"
#$x("//*[@id='readme']/div[3]/article/table[1]")
times=htmltab(doc = url, which = "//*[@id='readme']/div[3]/article/table[1]")
print(times)

