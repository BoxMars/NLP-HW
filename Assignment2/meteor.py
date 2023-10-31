from nltk.translate.meteor_score import meteor_score
import nltk
nltk.download('wordnet')

res=[]

def meteor_score_wrapper(references, hypotheses):
    sum_score = 0
    for i in range(0, len(references)):
        sum_score += meteor_score([references[i]], hypotheses[i])
    res.append(sum_score / len(references))
    return sum_score / len(references)

# read ref file from /workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.token.clean.50.en
ref=[]
with open('/workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.token.clean.50.en', 'r') as f:
    for line in f:
        ref.append(line.strip().split(' '))

def get_hypotheses(path):
    hypotheses = []
    with open(path, 'r') as f:
        for line in f:
            hypotheses.append(line.strip().split(' '))
    return hypotheses

hyp=get_hypotheses("/workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.translated.old.en")

print("OLD\t{}".format(meteor_score_wrapper(ref, hyp)))

for i in range(1,20):
    hyp=get_hypotheses("/workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.translated.{}.en".format(i))
    print("{}\t{}".format(i, meteor_score_wrapper(ref, hyp)))

hyp=get_hypotheses("/workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.translated.en")
print("FINE\t{}".format(meteor_score_wrapper(ref, hyp)))

x=range(0,21)
import matplotlib.pyplot as plt
from matplotlib.ticker import MaxNLocator
# save the graph
plt.plot(x,res)
plt.xlabel('Number of Iteration')
plt.ylabel('METEOR score')
plt.title('METEOR score for each iteration')
plt.grid(True)
plt.gca().xaxis.set_major_locator(MaxNLocator(integer=True))
plt.savefig('METEOR.png')
