printf "Tokenizing Chinese...\n"
sudo docker run -it --rm -v '/Users/box/Study/Master/NLP/Assignment2:/mnt' openjdk:8-jdk /bin/bash /mnt/tokenizer-zh.sh
printf "Tokenizing English...\n"
sudo docker run -it --rm -v '/Users/box/Study/Master/NLP/Assignment2:/mnt' moses /bin/bash /mnt/tokenizer-en.sh