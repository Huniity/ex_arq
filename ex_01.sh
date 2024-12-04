#!/bin/bash
#Criar .txt com nome de cada pasta a..z

    for dir in ./script_sample_folder/*; do
        content=${dir: -2}
        file_path=$dir/script_sample_folder_$content.txt
        if ! [ -f $file_path ]
        then
            echo "Este ficheiro chama-se: $content" > $file_path
            echo "Arquivo " $file_path " criado com sucesso"
        else
            echo "Arquivo em" $content "já existe"
        fi
    done
