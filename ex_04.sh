#!/bin/bash
#Caso o argumento booleano seja passado, deletar todos os diretórios de script_sample_folder;
#Caso o argumento booleano não seja passado, deletar somente aqueles diretórios que têm conteúdo dentro.

if ! [ $(basename $PWD) = "script_sample_folder" ]; then
    echo "Not in correct folder!"
    return
fi

 n=$(basename $dir)
 content=${dir: -2}
            

echo "Do you want to delete directories? [yes/no]"
read answer

if [[ "$answer" =~ ^(yes|y)$ ]];
then
    delete=true
fi

if [[ "$answer" =~ ^(no|n)$ ]];
then
    delete=false
fi

if [[ $delete == false ]]; then
    for dir in ./*; do
        if [[ "$(find "$dir" -type f)" ]];
        then    
            rm -rf $dir
            echo "$dir has been removed"
        fi
    done
fi

if [[ $delete == true ]]; then
    for dir in ./*; do
        rm -rf $dir
        echo "$dir has been removed"
    done
fi