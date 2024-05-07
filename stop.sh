#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

FOLDERS=("VM-host-100" "VM-host-200")


for folder in "${FOLDERS[@]}"; do

    if [ -d "$BASE_DIR/$folder" ]; then
        echo "######################### Destruir VM $folder ######################### "
     
        cd "$BASE_DIR/$folder" && vagrant destroy --force

        echo "######################### VM $folder SUCESSO S2 ######################### "
    else
        
        echo "FAIL FAIL FAIL FAIL FAIL "

        echo "Pasta $folder não encontrada."
    fi
done