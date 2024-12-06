#!/bin/bash
#Modificar o nome de cada pasta a..z
    if ! [ $(basename $PWD) = "script_sample_folder" ]; then
        echo "Not in correct folder!"
        return
    fi


    echo "Insert a prefix to rename all directories in /script_sample/folder/"
    read prefix

        for dir in ./*; do
            content=${dir: -2}
            if [ -d $dir ]
            then    
                mv -f ./$dir /Users/aluno/Documents/pw_projects/eticGeneral/linux/samples/script_sample_folder/$prefix"_"$content
                echo "Name has been changed. New name uses $prefix"_"$content"
            else
                echo "$content not a dir"
            fi
        done