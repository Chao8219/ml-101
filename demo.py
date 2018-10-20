import pandas as pd
import numpy as np
# import matplotlib.pyplot as plt
from matplotlib import pyplot
import seaborn as sns

%matplotlib inline

raw_data = pd.read_excel('titanic.xls')
raw_data.info()
