printf "Tokenizing Chinese...\n"
sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' openjdk:8-jdk \
    java -jar /mnt/ansjTokenizer/ansjTokenizer.jar \
        '/mnt/iwslt2014zh-en/train/train.tags.zh-en.zh' \
        '/mnt/iwslt2014zh-en/train/train.token.zh' 

printf "Tokenizing English...\n"

sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' moses \
    /bin/bash \
    /mnt/scripts/token-en.sh


printf "Cleaning corpus...\n"
sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' moses \
    /home/moses/mosesdecoder/scripts/training/clean-corpus-n.perl \
        /mnt/iwslt2014zh-en/train/train.token \
        en \
        zh \
        /mnt/iwslt2014zh-en/train/train.token.clean.50 \
        1 \
        50 \
        -lowercase 1