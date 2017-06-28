echo "Downloading the data..."
echo "Targeting the Multi30k dataset..."
mkdir -p data
mkdir -p data/multi30k
wget http://www.quest.dcs.shef.ac.uk/wmt16_files_mmt/training.tar.gz &&  tar -xf training.tar.gz -C data/multi30k && rm training.tar.gz
wget http://www.quest.dcs.shef.ac.uk/wmt16_files_mmt/validation.tar.gz && tar -xf validation.tar.gz -C data/multi30k && rm validation.tar.gz
wget https://staff.fnwi.uva.nl/d.elliott/wmt16/mmt16_task1_test.tgz && tar -xf mmt16_task1_test.tgz -C data/multi30k && rm mmt16_task1_test.tgz

echo "Generating toy training data..."
head -3000 data/multi30k/train.en > data/multi30k/train-toy.en
head -3000 data/multi30k/train.de > data/multi30k/train-toy.de

