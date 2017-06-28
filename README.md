# Repository for JSALT'17 NMT Lab

Comprehensive documentation for this lab here: https://tinyurl.com/yalmjyk2

### Set up your environment
```bash
source ENV.sh
```
This will allow your run to find the necessary executables. You do not need to modify the values
in this file if you are on the PSC grid. If not, replace them with values for your grid.

### Get the parallel data

1. Run data.sh. This will fetch data from the internet and create train, test and validation
  datasets.
```bash
sh data.sh
```
2. This will also create a smaller toy training dataset that we will use during this session
  to make training faster.

### Pre-process
Pre-process the input files; tokenize etc. The following command will do this for you.
```bash
sh preprocess.sh
```

### Run training
```bash
sh train-toy.sh de en
sh train-toy.sh en de
```

### Baseline to beat
On De-En, Gaurav's baseline score is 13.11 BLEU. This is the number to beat.
