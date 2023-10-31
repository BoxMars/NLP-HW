# read line for evaluate.out convert to int sort in array
data=[]
with open("evaluate.out") as f:
    content = f.readlines()
    for line in content:
        data.append(float(line.replace("\n","")))
print(data)
# plot the graph
x=range(0,21)
import matplotlib.pyplot as plt
from matplotlib.ticker import MaxNLocator
# save the graph
plt.plot(x,data)
plt.xlabel('Number of Iteration')
plt.ylabel('BLEU score')
plt.title('BLEU score for each iteration')
plt.grid(True)
plt.gca().xaxis.set_major_locator(MaxNLocator(integer=True))
plt.savefig('BLEU.png')

