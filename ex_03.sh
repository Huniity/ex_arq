#Deletar carateres dados pelo user de um ficheiro




    if ! [ $(basename $PWD) = "script_sample_folder" ]; then
        echo "Not in correct folder!"
        return
    fi

    echo "Insert a character to delete all files from the directory"
    read char

    if ! [[ "$(find "$dir" -type f)" ]];
    then
        echo "Nothing to be removed"

        for dir in ./*; do
            n=$(basename $dir)
            m=${dir: -2}

            if [[ $m == *"$char"* ]] && [[ "$(find "$dir" -type f)" ]]; 
            then
                echo "$m.txt removed"
                rm $n/*.txt
            fi
        done
    fi
