#!/bin/bash
set -ex

timestamp=$(date "+%Y%m%d-%H%M%S")
results_dir="results"
report_file="results/report.csv"

if [ -f $report_file ]; then
rm $report_file
fi

# Generate the output directory
if [ ! -d $results_dir ]; then
mkdir -p ./$results_dir
fi

echo time,library >> $report_file
# Run the training 5 times
counter=1
while [ $counter -le 5 ]
do
. ./run_xlearn.sh
echo $result,xlearn >> $report_file
. ./run_liblinear.sh
echo $result,liblinear >> $report_file
counter=$(( counter+1 ))
done
