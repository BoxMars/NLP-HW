docker run -it --rm -v '/Users/box/Study/Master/NLP/Assignment2:/mnt' coedl/kaldi-srilm:latest \
        /kaldi/tools/srilm/bin/i686-m64/ngram-count \
        -text /mnt/iwslt2014zh-en/train/train.token.reduce.en \
        -order 3 \
        -write /mnt/iwslt2014zh-en/train/train.token.reduce.en.counts \
        -lm /mnt/iwslt2014zh-en/train/train.token.reduce.en.lm \
        -interpolate -unk -map-unk "<UNK>" \

