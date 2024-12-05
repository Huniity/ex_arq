#Deletar carateres dados pelo user de um ficheiro



    echo "Insert a character to delete all files from the directory"
    read char
    
        if ! [ $(basename $PWD) = "script_sample_folder" ]; then
            echo "Not in correct folder!"
            return
        fi

        for dir in ./*; do
            n=$(basename $dir)
            m=${dir: -2}
            if [[ $m == *"$char"* ]]; then
                echo "$m.txt removed"
                rm $n/*.txt  
            fi
        done