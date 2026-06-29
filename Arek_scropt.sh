#!/bin/bash

# This is a simple loop to prevent the program from shutting down
while true
do
    echo "My Admin Script"
    echo "1. Create file and set permissions"
    echo "2. Create directory and set permissions"
    echo "3. Create tarball of directory"
    echo "4. Delete file or directory"
    echo "5. Quit"
    
    # We ask the user to choose
    echo -n "Choose an option: "
    read choice

    if [ "$choice" == "1" ]
    then
        echo "Enter filename:"
        read filename
        touch $filename
        echo "Enter permissions (like 777):"
        read perms
        chmod $perms $filename
        echo "Done!"

    elif [ "$choice" == "2" ]
    then
        echo "Enter directory name:"
        read dirname
        mkdir $dirname
        echo "Enter permissions:"
        read perms
        chmod $perms $dirname
        echo "Directory created."

    elif [ "$choice" == "3" ]
    then
        echo "Which directory to pack?"
        read dir_to_tar
        echo "Name for your tarball (end with .tar):"
        read tar_name
        tar -cvf $tar_name $dir_to_tar
        echo "Tarball created."

    elif [ "$choice" == "4" ]
    then
        echo "What do you want to delete file or directory?)"
        read target
        rm -rf $target
        echo "Deleted $target"

    elif [ "$choice" == "5" ]
    then
        echo "Bye bye!"
        exit 0
    else
        echo "Wrong choice, try again."
    fi

    # 
    echo ""
done