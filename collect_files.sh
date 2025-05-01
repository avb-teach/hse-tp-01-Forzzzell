#!/bin/bash

input_dir="$1"
output_dir="$2"

if [ -z "$input_dir" ] || [ -z "$output_dir" ]; then
    echo "Usage: $0 /path/to/input_dir /path/to/output_dir"
    exit 1
fi

mkdir -p "$output_dir"

find "$input_dir" -type f -exec cp {} "$output_dir" \;
