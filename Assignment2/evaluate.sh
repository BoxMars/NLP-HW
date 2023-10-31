# sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' moses \
#     /bin/bash \
#     /mnt/scripts/evaluate-bleu.sh

sudo docker run -it --rm -v '/workspaces/NLP-HW/Assignment2:/mnt' openjdk:8-jdk \
    /bin/bash \
    /mnt/scripts/evaluate-tercom.sh