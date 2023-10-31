/home/moses/mosesdecoder/scripts/generic/multi-bleu.perl \
-lc /mnt/iwslt2014zh-en/test/test.token.clean.50.en \
< /mnt/iwslt2014zh-en/test/test.translated.old.en

for i in {1..19}
do
/home/moses/mosesdecoder/scripts/generic/multi-bleu.perl \
-lc /mnt/iwslt2014zh-en/test/test.token.clean.50.en \
< /mnt/iwslt2014zh-en/test/test.translated.$i.en
done

/home/moses/mosesdecoder/scripts/generic/multi-bleu.perl \
-lc /mnt/iwslt2014zh-en/test/test.token.clean.50.en \
< /mnt/iwslt2014zh-en/test/test.translated.en

# BLEU = 83.98, 95.6/86.4/80.8/76.4 (BP=0.994, ratio=0.994, hyp_len=18386, ref_len=18496)