all: writeup.html

writeup.html: writeup.Rmd outputs.RData
	Rscript -e "rmarkdown::render('writeup.Rmd')"

outputs.RData: analysis.R
	Rscript analysis.R
