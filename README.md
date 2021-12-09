## Building a Data Analysis pipeline tutorial
adapted from [Software Carpentry](http://software-carpentry.org/)

This example data analysis project analyzes the word count for all words in 4
novels. It reports the top 10 most occurring words in each book in a [report](doc/count_report.Rmd).

### Usage:

There are two suggested ways to run this analysis:

#### 1. Using Docker
*note - the instructions in this section also depends on running this in a unix shell (e.g., terminal or Git Bash), if you are using Windows Command Prompt, replace `/$(pwd)` with PATH_ON_YOUR_COMPUTER.*

1. Install [Docker](https://www.docker.com/get-started)
2. Download/clone this repository
3. Use the command line to navigate to the root of this downloaded/cloned repo
4. Type the following:

```
docker-compose run --rm analysis-env make -C /home/rstudio/data_analysis_eg all
```

#### 2. After installing all dependencies (does not depend on Docker)

1. Clone this repo, and using the command line, navigate to the root of this project.
2. To run the analysis, type the following commands:

```
make all
```

3. To reset/undo the analysis, type the following commands:

```
make clean
```

### Depenedencies
- R & R libraries:
    - `rmarkdown==2.0`
    - `knitr==1.26`
    - `here==0.1`
    - `cowsay==0.7.0`
- Python & Python libraries:
    - `matplotlib==3.1.1`
    - `pandas==0.25.1`
    - `numpy==1.17.2R`
- GNU make 4.2.1
