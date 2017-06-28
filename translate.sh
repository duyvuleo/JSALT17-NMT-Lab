#!/bin/bash"
echo "Translating/Decoding the input..."

if test "$#" -ne 3; then
        echo "Illegal number of parameters"
        echo "sh translate.sh <model> <input> <output>"
        exit 0
fi

CUR_DIR=`pwd`
PYTHONPATH=$CUR_DIR/sockeye python sockeye/sockeye/translate.py --models $1 --beam-size 5 --use-cpu < $2 > $3


