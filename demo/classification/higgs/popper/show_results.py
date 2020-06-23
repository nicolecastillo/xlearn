import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

results = pd.read_csv("results/report.csv", sep=",")

sns.barplot(x = 'library', y = 'time', data = results)
plt.title('Performance of the libraries with HIGGS dataset')
plt.show()
