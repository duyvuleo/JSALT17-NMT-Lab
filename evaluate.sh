echo "Evaluating the result..."

if test "$#" -ne 2; then
        echo "Illegal number of parameters"
        echo "sh evaluate.sh <reference> <system>"
        exit 0
fi

perl $EVAL_SCRIPT $1 < $2
