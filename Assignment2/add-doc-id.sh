for i in {1..19}
do
awk '{print $0, "(" NR ")"}' /workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.translated.$i.en \
    > /workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.translated.$i.id.en
done

awk '{print $0, "(" NR ")"}' /workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.translated.en \
    > /workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.translated.id.en

awk '{print $0, "(" NR ")"}' /workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.translated.old.en \
    > /workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.translated.old.id.en

awk '{print $0, "(" NR ")"}' /workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.token.clean.50.en \
    > /workspaces/NLP-HW/Assignment2/iwslt2014zh-en/test/test.token.clean.50.id.en