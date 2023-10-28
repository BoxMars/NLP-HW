printf "Training started\n"
/home/moses/mosesdecoder/scripts/training/train-model.perl \
    -root-dir /mnt/model \
    -corpus /mnt/iwslt2014zh-en/train/train.token.clean.50 \
    -f zh \
    -e en \
    -alignment grow-diag-final-and \
    -reordering msd-bidirectional-fe \
    -lm 0:3:/mnt/iwslt2014zh-en/train/train.token.clean.50.blm.en:8 \
    --mgiza \
    --verbose \
    -external-bin-dir /home/moses/mgiza/mgizapp/inst

printf "Training finished\n"
