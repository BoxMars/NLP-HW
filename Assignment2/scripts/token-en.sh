/home/moses/mosesdecoder/scripts/tokenizer/tokenizer.perl \
        -l en \
        -threads 4 \
        < /mnt/iwslt2014zh-en/train/train.tags.zh-en.en \
        > /mnt/iwslt2014zh-en/train/train.token.en

/home/moses/mosesdecoder/scripts/tokenizer/tokenizer.perl \
        -l en \
        -threads 4 \
        < /mnt/iwslt2014zh-en/dev/IWSLT14.TED.dev2010.zh-en.en \
        > /mnt/iwslt2014zh-en/dev/dev.token.en

/home/moses/mosesdecoder/scripts/tokenizer/tokenizer.perl \
        -l en \
        -threads 4 \
        < /mnt/iwslt2014zh-en/test/IWSLT14.TED.tst2014.zh-en.en \
        > /mnt/iwslt2014zh-en/test/test.token.en