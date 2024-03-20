#!/bin/bash

# Define the directory to search for the input file name
directory="/d/Devops_Learning_1"
echo "Please enter your file name"
read -p "First name: " filename
file_name=$filename

# Check if the directory exists
if [ -d "$directory" ]; then
    # Check if the input file exists in the directory
    if [ -e "$directory/$file_name" ]; then
        # Delete the input file
        rm "$directory/$file_name"
        echo "File $file_name deleted from $directory."
    else
        echo "File $file_name does not exist in $directory."
    fi
else
    echo "Directory $directory does not exist."
fi