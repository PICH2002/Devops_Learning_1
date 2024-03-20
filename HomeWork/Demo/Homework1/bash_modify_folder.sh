#!/bin/bash

# Loop from LAB2 to LAB12
for ((i=2; i<=12; i++))
do
    old_folder="MODIFIED_LAB${i}"
    new_folder="LAB0${i}"
    mv "$old_folder" "$new_folder"
    echo "Folder $old_folder renamed to $new_folder."
done