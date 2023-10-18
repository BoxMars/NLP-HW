printf "Building English Language Models and Counts...\n"
docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' coedl/kaldi-srilm:latest \
        /kaldi/tools/srilm/bin/i686-m64/ngram-count \
        -text /mnt/iwslt2014zh-en/train/train.token.clean.50.en \
        -order 3 \
        -write /mnt/iwslt2014zh-en/train/train.token.clean.50.en.count \
        -lm /mnt/iwslt2014zh-en/train/train.token.clean.50.en.lm \
        -interpolate -unk -map-unk "<UNK>" 

printf "Building Chinese Language Models and Counts...\n"
docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' coedl/kaldi-srilm:latest \
        /kaldi/tools/srilm/bin/i686-m64/ngram-count \
        -text /mnt/iwslt2014zh-en/train/train.token.clean.50.zh \
        -order 3 \
        -write /mnt/iwslt2014zh-en/train/train.token.clean.50.zh.count \
        -lm /mnt/iwslt2014zh-en/train/train.token.clean.50.zh.lm \
        -interpolate -unk -map-unk "<UNK>" 

printf "Building binary English language models...\n"
sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' moses \
        /home/moses/mosesdecoder/bin/build_binary \
        /mnt/iwslt2014zh-en/train/train.token.clean.50.en.lm \
        /mnt/iwslt2014zh-en/train/train.token.clean.50.en.blm 

printf "Building binary Chinese language models...\n"
sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' moses \
        /home/moses/mosesdecoder/bin/build_binary \
        /mnt/iwslt2014zh-en/train/train.token.clean.50.zh.lm \
        /mnt/iwslt2014zh-en/train/train.token.clean.50.zh.blm 

sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' moses /bin/bash /mnt/scripts/query.sh

