printf "Building English Language Models and Counts...\n"
sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' moses \
        /home/moses/mosesdecoder/bin/lmplz \
        -o 3 \
        -S 50% \
        -T /mnt/tmp \
        --text /mnt/iwslt2014zh-en/train/train.token.clean.50.en \
        --arpa /mnt/iwslt2014zh-en/train/train.token.clean.50.lm.en \
        --discount_fallback


printf "Building Chinese Language Models and Counts...\n"
sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' moses \
        /home/moses/mosesdecoder/bin/lmplz \
        -o 3 \
        -S 50% \
        -T /mnt/tmp \
        --text /mnt/iwslt2014zh-en/train/train.token.clean.50.zh \
        --arpa /mnt/iwslt2014zh-en/train/train.token.clean.50.lm.zh \
        --discount_fallback

printf "Building binary English language models...\n"
sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' moses \
        /home/moses/mosesdecoder/bin/build_binary \
        /mnt/iwslt2014zh-en/train/train.token.clean.50.lm.en \
        /mnt/iwslt2014zh-en/train/train.token.clean.50.blm.en

printf "Building binary Chinese language models...\n"
sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' moses \
        /home/moses/mosesdecoder/bin/build_binary \
        /mnt/iwslt2014zh-en/train/train.token.clean.50.lm.zh \
        /mnt/iwslt2014zh-en/train/train.token.clean.50.blm.zh 

sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' moses /bin/bash /mnt/scripts/query.sh

