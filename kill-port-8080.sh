#!/bin/bash

# Get all PIDs using port 8080
pids=$(lsof -t -i:8080)

# Check if there are any processes using port 8080
if [ -z "$pids" ]; then
  echo "No processes using port 8080."
else
  # Kill each process using port 8080
  echo "Killing processes using port 8080: $pids"
  for pid in $pids; do
    sudo kill -9 $pid
    echo "Killed process $pid"
  done
fi

# You can repeat for other ports like 42278, 54976, etc., or specify a range/selection of ports
