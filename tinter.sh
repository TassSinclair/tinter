#!/usr/bin/env bash
set -x

declare -A colours=( ["red"]="ed312f" ["tan"]="a17861" ["brown"]="5f3c25" \
                     ["orange"]="f58a33" ["lime"]="bdbd32" ["mint"]="85b880" \
                     ["green"]="00aa5b" ["sky"]="7dced5" ["teal"]="00bccd" \
                     ["blue"]="0078bf" ["purple2"]="702269" ["pink"]="ee5ba0" \
                     ["crimson"]="b51b58" ["grey"]="808184" ["purple"]="6a2569" )

for colour in "${!colours[@]}"; do
    convert $1 -modulate 98,10 -fill "#${colours[$colour]}" -tint 100 -modulate 100,120 "$1 ($colour).jpg"; 
done