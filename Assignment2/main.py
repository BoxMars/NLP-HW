import subprocess

token_en_path='./iwslt2014zh-en/train/train.token.en'
token_zh_path='./iwslt2014zh-en/train/train.token.zh'

token_en_clean_path='./iwslt2014zh-en/train/train.token.clean.50.en'
token_zh_clean_path='./iwslt2014zh-en/train/train.token.clean.50.zh'

try:
    with open(token_en_path, 'r') as f:
        pass
    with open(token_zh_path, 'r') as f:
        pass
    with open(token_en_clean_path, 'r') as f:
        pass
    with open(token_zh_clean_path, 'r') as f:
        pass
except:
    subprocess.run(['/bin/bash', 'tokenizer.sh'])

# count the number of lines
en_num_lines = sum(1 for line in open(token_en_path))
zh_num_lines = sum(1 for line in open(token_zh_path))

en_clean_num_lines = sum(1 for line in open(token_en_clean_path))
zh_clean_num_lines = sum(1 for line in open(token_zh_clean_path))

print('before clean: \ten: \t%d, \tzh: \t%d' % (en_num_lines, zh_num_lines))
print('after clean: \ten: \t%d, \tzh: \t%d' % (en_clean_num_lines, zh_clean_num_lines))

subprocess.run(['/bin/bash', 'n-gram.sh'])
