/home/moses/mosesdecoder/bin/moses -f /mnt/model/model/moses.ini \
--output-unknowns \
< /mnt/iwslt2014zh-en/test/test.token.clean.50.zh > /mnt/iwslt2014zh-en/test/test.translated.old.en

/home/moses/mosesdecoder/bin/moses -f /mnt/fine-tune/moses.ini \
--output-unknowns \
< /mnt/iwslt2014zh-en/test/test.token.clean.50.zh > /mnt/iwslt2014zh-en/test/test.translated.en

for i in {1..19}
do
/home/moses/mosesdecoder/bin/moses -f /mnt/fine-tune/run$i.moses.ini \
--output-unknowns \
< /mnt/iwslt2014zh-en/test/test.token.clean.50.zh > /mnt/iwslt2014zh-en/test/test.translated.$i.en
done