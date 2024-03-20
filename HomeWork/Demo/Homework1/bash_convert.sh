#!/bin/bash

# Loop from Lab02 to Lab12
for ((i=2; i<=9; i++))
do
    old_folder="Lab$(printf %02d $i)"
    
    new_folder="lab$(printf %02d $i)"
    
    # Convert uppercase to lowercase
    new_folder_lower=$(echo "$new_folder" | tr '[:upper:]' '[:lower:]')
    
    # Rename the folder
    mv "$old_folder" "$new_folder_lower"
    echo "Folder $old_folder renamed to $new_folder_lower."
done
for ((i=10; i<=12; i++))
do
    old_folder="Lab$(printf %03d $i)"
    
    new_folder="lab$(printf %03d $i)"
    
    # Convert uppercase to lowercase
    new_folder_lower=$(echo "$new_folder" | tr '[:upper:]' '[:lower:]')
    
    # Rename the folder
    mv "$old_folder" "$new_folder_lower"
    echo "Folder $old_folder renamed to $new_folder_lower."
done
