#!/bin/bash

# Description: This script checks all log files starting with "du_" in a specified or current directory for the string "TTI_IND_TIMER_EXPIRED".

# Specify the default directory here (leave empty to use the current directory).
default_directory=""

directory="${default_directory:-$(pwd)}" # Use specified directory or fallback to current directory

if [[ ! -d "$directory" ]]; then
    echo "Error: Directory '$directory' does not exist."
    exit 1
fi

start_time=$(date +%s)

# Loop through all files matching the pattern "du_*.log" in the specified directory
for file in "$directory"/du_*.log; do
    # Ensure the file exists before proceeding
    if [[ -f "$file" ]]; then
        echo "Processing file: $file"
        found=false
        # Read the file line by line
        while IFS= read -r line || [[ -n "$line" ]]; do
            # Check if the line contains "TTI_IND_TIMER_EXPIRED"
            if [[ "$line" == *"TTI_IND_TIMER_EXPIRED"* ]]; then
                # Print the file name and line content
                echo "Error found in file: $file"
                echo "Line: $line"
                found=true
            fi
        done < "$file"
        if [[ "$found" == false ]]; then
            echo "No errors found in file: $file"
        fi
    else
        echo "File not found: $file"
    fi
done

end_time=$(date +%s)
execution_time=$((end_time - start_time))

echo "Execution completed in $execution_time seconds."
