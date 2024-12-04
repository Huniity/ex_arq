#!/bin/bash
#Modificar o nome de cada pasta a..z

    echo "Insert a prefix to rename all directories in /script_sample/folder/"
    read prefix

        for dir in ./script_sample_folder/*; do
            content=${dir: -2}
            if [ -d $dir ]
            then    
                mv -f ./$dir /Users/aluno/Documents/pw_projects/eticGeneral/linux/samples/script_sample_folder/$prefix"_"$content
            else
                echo "$content not a dir"
            fi
        done