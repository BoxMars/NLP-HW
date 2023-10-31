path="/workspaces/NLP-HW/Assignment2/evaluate.out"
# read file
data=[]
with open(path, 'r') as f:
    for line in f:
        if line.startswith("Total"):
            data.append(float(line.strip().split(' ')[2]))

print(data)
x=range(0,21)
import matplotlib.pyplot as plt
from matplotlib.ticker import MaxNLocator
# save the graph
plt.plot(x,data)
plt.xlabel('Number of Iteration')
plt.ylabel('TERCOM score')
plt.title('TERCOM score for each iteration')
plt.grid(True)
plt.gca().xaxis.set_major_locator(MaxNLocator(integer=True))
plt.savefig('TERCOM.png')
