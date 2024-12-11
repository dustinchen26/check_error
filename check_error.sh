#!/bin/bash

# Description: This script checks all log files starting with "du_" in the current directory for the string "TTI_IND_TIMER_EXPIRED".

start_time=$(date +%s)

# Loop through all files matching the pattern "du_*.log"
for file in du_*.log; do
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
