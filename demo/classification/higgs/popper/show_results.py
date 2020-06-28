#/usr/bin/env python

import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import glob 

dirlist = glob.glob("results/*/report.csv")

results = pd.read_csv(dirlist[-1], sep=",")

sns.barplot(x = 'library', y = 'time', data = results)
plt.title('Performance of the libraries with HIGGS dataset')
plt.show()
