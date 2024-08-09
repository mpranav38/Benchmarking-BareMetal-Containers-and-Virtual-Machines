#!/bin/bash



# Function to run Sysbench fileio test and display results

run_sysbench() {

  local threads=$1

  local mode=$2



  # Run Sysbench

  result=$(sysbench fileio --file-num=128 --file-block-size=4096 --file-total-size=120G --file-test-mode=rndrd --file-io-mode=sync --file-extra-flags=direct --threads=$threads $mode)



  # Extract and display total operations and measured throughput

  operations=$(echo "$result" | awk '/total number of events/ {print $5}')

  throughput=$(echo "$result" | awk '/transferred/ {print $13}')



  echo "Threads: $threads | Total Operations: $operations | Measured Throughput: $throughput"

}



# Prepare the test

run_sysbench 1 prepare



# Run the test for different thread values

for threads in 1 2 4 8 16 32 64

do

  run_sysbench $threads run

done



# Cleanup after the test

run_sysbench 1 cleanup





