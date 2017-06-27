echo "Tokenizing the data..."
for l in en de; do for f in data/multi30k/*.$l; do if [[ "$f" != *"test"* ]]; then sed -i "$ d" $f; fi;  done; done
for l in en de; do for f in data/multi30k/*.$l; do perl /pylon2/ci560op/fosterg/tools/mosesdecoder/scripts/tokenizer/tokenizer.perl -a -no-escape -l $l -q  < $f > $f.atok; done; done

