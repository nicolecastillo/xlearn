#!/bin/sh
set -ex

# Get HIGGS dataset

wget https://archive.ics.uci.edu/ml/machine-learning-databases/00280/HIGGS.csv.gz

if [ -f HIGGS.csv.gz ]; then
gunzip HIGGS.csv.gz
fi

