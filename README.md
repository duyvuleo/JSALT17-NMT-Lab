# Repository for JSALT'17 NMT Lab

### Set up your environment
```bash
source ENV.sh
```
This will allow your run to find the necessary executables. You do not need to modify the values
in this file if you are on the PSC grid. If not, replace them with values for your grid.

### Get the parallel data
1. Run data.sh. This will fetch data from the internet and create train, test and validation
  datasets.
2. This will also create a smaller toy training dataset that we will use during this session
  to make training faster.
