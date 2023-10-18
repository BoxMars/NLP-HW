import subprocess

token_en_path='./iwslt2014zh-en/train/train.token.en'
token_zh_path='./iwslt2014zh-en/train/train.token.zh'

token_en_reduce_path='./iwslt2014zh-en/train/train.token.reduce.en'
token_zh_reduce_path='./iwslt2014zh-en/train/train.token.reduce.zh'

try:
    with open(token_en_path, 'r') as f:
        pass
    with open(token_zh_path, 'r') as f:
        pass
except:
    subprocess.run(['/bin/bash', 'tokenizer.sh'])

with open(token_en_path, 'r') as f:
    token_en = f.readlines()
with open(token_zh_path, 'r') as f:
    token_zh = f.readlines()


assert len(token_en) == len(token_zh), 'token_en and token_zh not equal'
print('before remove\t:', len(token_en),'\t', len(token_zh))

for i in range(len(token_en)-1, -1, -1):
    if len(token_en[i].split()) > 50 or len(token_zh[i].split()) > 50:
        token_en.pop(i)
        token_zh.pop(i)

print('after remove\t:', len(token_en),'\t', len(token_zh))


# write token_en and token_zh
with open(token_en_reduce_path, 'w') as f:
    f.writelines(token_en)
with open(token_zh_reduce_path, 'w') as f:
    f.writelines(token_zh)
