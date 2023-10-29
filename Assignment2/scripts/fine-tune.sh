printf "Fine-tuning started\n"
/home/moses/mosesdecoder/scripts/training/mert-moses.pl \
    --decoder-flags="-threads 8" \
    /mnt/iwslt2014zh-en/dev/dev.token.clean.50.zh \
    /mnt/iwslt2014zh-en/dev/dev.token.clean.50.en \
    /home/moses/mosesdecoder/bin/moses \
    /mnt/model/model/moses.ini \
    --working-dir /mnt/fine-tune \
    --no-filter-phrase-table \
    --mertdir /home/moses/mosesdecoder/bin \
    
