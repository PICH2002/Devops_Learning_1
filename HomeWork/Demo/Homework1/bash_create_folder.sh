
#!/bin/bashls
# Loop from LAB2 to LAB12
for ((i=2; i<=12; i++))
do
    folder_name="LAB${i}"
    mkdir "$folder_name"
    echo "Folder $folder_name created."
done


