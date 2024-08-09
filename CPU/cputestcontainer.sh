#! /usr/bin/env python3

import subprocess



def run_sysbench_cpu(threads):

    command = f"sysbench cpu --cpu-max-prime=100000 --threads={threads} run"

    result = subprocess.run(command, shell=True, capture_output=True, text=True)

    return result.stdout



# Display header

print("Threads\tAvg. Latency (ms)\tMeasured Throughput (Events per Second)")



# Specify the thread counts to run

thread_counts = [1, 2, 4, 8, 16, 32, 64]



# Run Sysbench CPU for specified thread counts

for threads in thread_counts:

    sysbench_output = run_sysbench_cpu(threads)

    

    # Extract and display relevant information

    avg_latency = float(sysbench_output.split("avg:")[1].split()[0])

    measured_throughput = float(sysbench_output.split("events per second:")[1].split()[0])

    

    print(f"{threads}\t{avg_latency:.2f}\t{measured_throughput:.2f}")
