#!/bin/bash

filename="current_peers.txt"

num_lines=$(wc -l < "$filename")

echo "The file $filename has $num_lines lines."

