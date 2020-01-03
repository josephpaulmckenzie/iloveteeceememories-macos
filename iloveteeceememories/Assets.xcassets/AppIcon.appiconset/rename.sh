# /!/bin/bash 

for f in *.png; do 
    # echo  "$f"
    # echo "${f/Icon-/}"

    mv "$f" "${f/Icon-/}";
    echo "$f"
    # rm "$f"


done


# mv "$f" "${f/_*_/_}";