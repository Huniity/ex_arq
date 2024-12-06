#!/bin/bash
#Criar .txt com nome de cada pasta a..z
    if ! [ $(basename $PWD) = "script_sample_folder" ]; then
        echo "Not in correct folder!"
        return
    fi


    for dir in ./*; do
        content=${dir: -2}
        file_path=$dir/script_sample_folder_$content.txt
        if ! [ -f $dir ]
        then
            echo "Este ficheiro chama-se: $content" > $file_path
            echo "Arquivo " $file_path " criado com sucesso"
        else
            echo "Arquivo em" $content "já existe"
        fi
    done