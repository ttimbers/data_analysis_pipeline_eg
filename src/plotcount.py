"""Generates a barchart of wordcounts for the 10 most frequent words.

Usage: src/plotcount.py <input_file> <output_file>

Options:
<input_file>     Path (including filename) to data file
<output_file>    Path (including filename) of where to locally write the file
"""
  
from docopt import docopt
import pandas as pd
import matplotlib.pyplot as plt

opt = docopt(__doc__)

def main(input_file, output_file):
    data = pd.read_csv(input_file, sep = ' ', header = None, encoding='latin-1')
    data.rename(columns = {0:'word', 1:'count', 2:'frequency'}, inplace = True)
    data.sort_values(by = 'count')
    word_count_plot = data.iloc[:10,:2].plot.bar(x = 'word', y = 'count',
                                             color = 'blue',
                                             figsize = (5, 2),
                                            rot = 0)
    plt.savefig(output_file)

if __name__ == "__main__":
    main(opt["<input_file>"], opt["<output_file>"])
