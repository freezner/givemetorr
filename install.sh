#! /bin/bash

nowDate=$(date +%Y%m%d)
outputPath="output"
logPath="logs"

# [Install command]
# $ chmod 744 ./install.sh && ./install.sh

if ! [ -d "./${outputPath}" ]; then
    mkdir ./${outputPath}

    echo "[INFO] Initial outputPath -> ${outputPath}"
fi

if ! [ -d "./${logPath}" ]; then
    mkdir ./${logPath}

    echo "[INFO] Initial logPath -> ${logPath}"
fi

if [ -e "./src/requirements.txt" ]; then
    echo "[INFO] Installing to requirements."
    pip3 install -r ./src/requirements.txt --upgrade --user >> ./${logPath}/install_${nowDate}.log
    
    echo "[INFO] Initializing permissions."
    chmod 744 ./run.sh
    chmod 744 ./src/giveMeTorrr.py

    echo "[INFO] Successfully installed giveMeTorrr!!"
else
    echo "[ERROR] Not found requirements"
    exit
fi