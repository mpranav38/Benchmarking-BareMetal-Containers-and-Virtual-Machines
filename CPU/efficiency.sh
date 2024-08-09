#! /usr/bin/env python3

# Display header

print("Threads\tVM Measured Throughput\tBare-Metal Measured Throughput\tEfficiency")



# Specify the thread counts for the scenario

threads = [1, 2, 4, 8, 16, 32, 64]



# Measured throughput values for VM (replace with your actual VM values)

vm_throughputs = [35.23, 70.38, 141.15, 141.93, 142.04, 141.96, 142.03]



# Measured throughput values for bare-metal (replace with your actual bare-metal values)

bare_metal_throughputs = [35.56, 71.06, 142.09, 284.27, 565.15, 1000.04, 1317.14]



# Calculate and display efficiency for each thread count

for i, thread_count in enumerate(threads):

    vm_throughput = vm_throughputs[i]

    bare_metal_throughput = bare_metal_throughputs[i]

    

    efficiency = ( vm_throughput /bare_metal_throughput ) * 100

    

    print(f"{thread_count}\t{vm_throughput}\t{bare_metal_throughput}\t{efficiency:.2f}")




