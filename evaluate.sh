echo "Evaluating the result..."

if test "$#" -ne 2; then
        echo "Illegal number of parameters"
        echo "sh evaluate.sh <reference> <system>"
        exit 0
fi

perl /pylon2/ci560op/fosterg/tools/mosesdecoder/scripts/generic/multi-bleu.perl $1 < $2
