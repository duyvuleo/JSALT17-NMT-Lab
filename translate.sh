#!/bin/bash"
echo "Translating/Decoding the input..."

if test "$#" -ne 2; then
        echo "Illegal number of parameters"
        echo "sh translate.sh <inpiut> <output>"
        exit 0
fi

CUR_DIR=`pwd`
PYTHONPATH=$CUR_DIR/sockeye python sockeye/sockeye/translate.py --models models/multi30k-en-de/baseline --beam-size 5 --use-cpu < $1 > $2


