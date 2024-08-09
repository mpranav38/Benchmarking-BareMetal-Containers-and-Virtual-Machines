! /usr/bin/env python3

import subprocess

import re



def run_sysbench_memory(threads):

    command = f"sysbench memory --memory-block-size=1K --memory-total-size=120G --threads={threads} run"

    result = subprocess.run(command, shell=True, capture_output=True, text=True)

    return result.stdout



# Display header

print("Threads\tTotal Operations\tThroughput (MiB/sec)")



# Specify the thread counts to run

thread_counts = [1, 2, 4, 8, 16, 32, 64]



# Run Sysbench Memory for specified thread counts

for threads in thread_counts:

    sysbench_output = run_sysbench_memory(threads)

    

    # Extract and display relevant information

    total_operations = int(sysbench_output.split("total number of events:")[1].split()[0])

    

    # Extract throughput and remove non-numeric characters

    throughput_str = sysbench_output.split("MiB/sec")[0].split()[-1]

    throughput_mib_sec = float(re.sub(r'[^\d.]', '', throughput_str))

    

    print(f"{threads}\t{total_operations}\t{throughput_mib_sec:.2f}")




