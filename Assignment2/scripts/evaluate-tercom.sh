java -jar /mnt/tercom-0.7.25/tercom.7.25.jar \
    -r /mnt/iwslt2014zh-en/test/test.token.clean.50.id.en \
    -h /mnt/iwslt2014zh-en/test/test.translated.old.id.en \
    -N

for i in {1..19}
do
java -jar /mnt/tercom-0.7.25/tercom.7.25.jar \
    -r /mnt/iwslt2014zh-en/test/test.token.clean.50.id.en \
    -h /mnt/iwslt2014zh-en/test/test.translated.$i.id.en \
    -N
    -n TER$i
done

java -jar /mnt/tercom-0.7.25/tercom.7.25.jar \
    -r /mnt/iwslt2014zh-en/test/test.token.clean.50.id.en \
    -h /mnt/iwslt2014zh-en/test/test.translated.id.en \
    -N
