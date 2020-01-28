## Building a Data Analysis pipeline tutorial
adapted from [Software Carpentry](http://software-carpentry.org/)

This example data analysis project analyzes the word count for all words in 4
novels. It reports the top 10 most occurring words in each book in a [report](doc/count_report.Rmd).

### Usage:

To replicate the analysis, clone this GitHub repository, install the [dependencies](#dependencies) listed below, and run the following command at the command line/terminal from the root directory of this project:

```
make all
```

To reset the repo to a clean state, with no intermediate or results files, run the following command at the command line/terminal from the root directory of this project:

```
make clean
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
- GNU make 4.2.1