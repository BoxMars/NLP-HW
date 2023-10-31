#!/usr/bin/env bash
cd /mnt/fine-tune
/home/moses/mosesdecoder/bin/extractor --sctype BLEU --scconfig case:true  --scfile run9.scores.dat --ffile run9.features.dat -r /mnt/iwslt2014zh-en/dev/dev.token.clean.50.en -n run9.best100.out.gz
