echo "is this an English sentence ?" | /home/moses/mosesdecoder/bin/query \
        /mnt/iwslt2014zh-en/train/train.token.clean.50.blm.en
echo "这 是 中文 吗?" | /home/moses/mosesdecoder/bin/query \
        /mnt/iwslt2014zh-en/train/train.token.clean.50.blm.zh