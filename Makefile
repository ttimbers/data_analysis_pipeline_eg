# Driver script
# Tiffany Timbers, Nov 2018
#
# This driver script completes the textual analysis of
# 3 novels and creates figures on the 10 most frequently
# occuring words from each of the 3 novels. This script
# takes no arguments.
#
# usage: make all

# run all analysis
all: doc/count_report.md doc/count_report.html

# count words
results/isles.dat : data/isles.txt src/wordcount.py
	python src/wordcount.py data/isles.txt results/isles.dat
	
results/abyss.dat : data/abyss.txt src/wordcount.py
	python src/wordcount.py data/abyss.txt results/abyss.dat
	
results/last.dat : data/last.txt src/wordcount.py
	python src/wordcount.py data/last.txt results/last.dat
	
results/sierra.dat : data/sierra.txt src/wordcount.py
	python src/wordcount.py data/sierra.txt results/sierra.dat

# create figures
results/figure/isles.png : results/isles.dat src/plotcount.py
	python src/plotcount.py results/isles.dat results/figure/isles.png
	
results/figure/abyss.png : results/abyss.dat src/plotcount.py
	python src/plotcount.py results/abyss.dat results/figure/abyss.png

results/figure/last.png : results/last.dat src/plotcount.py
	python src/plotcount.py results/last.dat results/figure/last.png

results/figure/sierra.png : results/sierra.dat src/plotcount.py
	python src/plotcount.py results/sierra.dat results/figure/sierra.png

# render report	
doc/count_report.md doc/count_report.html : doc/count_report.Rmd results/figure/sierra.png results/figure/last.png results/figure/abyss.png results/figure/isles.png
	Rscript -e "rmarkdown::render('doc/count_report.Rmd')"

# Clean up intermediate and results files
clean : 
	rm -f results/*.dat 
	rm -f results/figure/*.png
	rm -f doc/count_report.md doc/count_report.html