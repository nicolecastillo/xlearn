#/bin/bash

repository="https://github.com/cjlin1/libsvm.git"

git clone "$repository" 
mv HIGGS.csv libsvm/matlab
cd libsvm/matlab

octave ../../scripts/convert.mat

mv HIGGS.csv ../../
mv HIGGSlibsvm ../../

cd ../../
repository="https://github.com/cjlin1/liblinear.git"
git clone "$repository" 
mv run_higgs_liblinear.py liblinear/python
mv HIGGSlibsvm liblinear/python
cd liblinear/python
make
cd ../../
