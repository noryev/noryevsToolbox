#!/bin/bash

# Get a list of all IPFS-related processes
ipfs_processes=$(ps aux | grep '[i]pfs' | awk '{print $2}')

# Check if there are any processes to kill
if [ -z "$ipfs_processes" ]; then
    echo "No IPFS-related processes found."
else
    # Loop through each process and kill it
    for pid in $ipfs_processes; do
        echo "Killing process ID: $pid"
        sudo kill -9 $pid
    done
    echo "All IPFS-related processes have been terminated."
fi