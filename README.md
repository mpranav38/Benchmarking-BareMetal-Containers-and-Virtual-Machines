# Benchmarking-BareMetal-Containers-and-Virtual-Machines
This project aims to teach you how to understand the overhead of various virtualization technologies
through benchmarking as well as familiarize yourself with operating Linux environment on the cloud. You
can be creative with this project. Since there are many experiments to run, find ways (e.g. scripts) to
automate the performance evaluation. You might find a combination of bash scripting along with
tmux/screen helpful. You can use any Linux distribution for this assignment, but you must make sure your
program runs and the results are re-producible on Ubuntu Linux 22.04 on the Chameleon Cloud.
In this project, by using sysbench and iPerf, you will perform strong scaling studies for each of the
benchmark types: CPU, Memory, Disk and Network. Strong scaling studies mean you will set the amount
of work (e.g. the number of instructions or the amount of data to evaluate in your benchmark) and reduce
the amount of work per thread as you increase the number of threads. You must incorporate bash
scripting for: environment (baremetal/container/VM) orchestration, run benchmark and Python to
analyze the results and plotting.
#Commands you can use to install tools on Ubuntu 22.04:
• sysbench: sudo apt install sysbench
• iPerf: sudo apt install iperf
#Documentations:
• sysbench: https://manpages.ubuntu.com/manpages/jammy/man1/sysbench.1.html
• iPerf: https://manpages.ubuntu.com/manpages/jammy/man1/iperf.1.html
