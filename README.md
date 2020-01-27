## Building a Data Analysis pipeline tutorial
adapted from [Software Carpentry](http://software-carpentry.org/)

This example data analysis project analyzes the word count for all words in 4
novels. It reports the top 10 most occurring words in each book in a [report](doc/count_report.Rmd).

### Usage:

1. Clone this repo, and using the command line, navigate to the root of this project.

2. Run the following commands:

```
python src/wordcount.py data/isles.txt results/isles.dat
python src/wordcount.py data/abyss.txt results/abyss.dat
python src/wordcount.py data/last.txt results/last.dat
python src/wordcount.py data/sierra.txt results/sierra.dat
python src/plotcount.py results/isles.dat results/figure/isles.png
python src/plotcount.py results/abyss.dat results/figure/abyss.png
python src/plotcount.py results/last.dat results/figure/last.png
python src/plotcount.py results/sierra.dat results/figure/sierra.png
Rscript -e "rmarkdown::render('doc/count_report.Rmd')"
```


### Depenedencies
- R & R libraries:
    - `rmarkdown`
    - `knitr`
    - `here`
- Python & Python libraries:
    - `matplotlib`
    - `numpy`
    - `sys`
    - `collections`
    - `wordcount`

The tutorials for this example can be found here:
- https://github.ubc.ca/MDS-2018-19/DSCI_522_dsci-workflows_students
