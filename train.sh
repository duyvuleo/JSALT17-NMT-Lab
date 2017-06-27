echo "Training the model..."

if test "$#" -ne 2; then
	echo "Illegal number of parameters"
	echo "sh train.sh <slang> <tlang>"
	exit 0
fi

# Creating the working folder
mkdir models
mkdir models/multi30k-$1-$2/
 
# Training
#rm -rf models/multi30k-$1-$2/baseline #remove the existing one if required!

CUR_DIR=`pwd`

PYTHONPATH=$CUR_DIR/sockeye python sockeye/sockeye/train.py --source data/multi30k/train.$1.atok --target data/multi30k/train.$2.atok --validation-source data/multi30k/val.$1.atok --validation-target data/multi30k/val.$2.atok --word-min-count 3 --rnn-num-layers 1 --rnn-cell-type gru --rnn-num-hidden 64 --num-embed-source 64 --num-embed-target 64 --attention-type mlp --attention-num-hidden 64 --batch-size 64 --normalize-loss --dropout 0.1 --optimizer adam --initial-learning-rate 0.001 --use-cpu --output models/multi30k-$1-$2/baseline

