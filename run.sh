#! /bin/bash

nowDate=$(date +%Y%m%d)
logPath="logs"
outputPath="output"

if ! [ -d "./${outputPath}" ]; then
    echo "[ERROR] Not found outputPath, Must to execute install.sh please."
    exit
fi

echo "[INFO] Start run script."

python3 ./src/giveMeTorrr.py >> ./${logPath}/run_${nowDate}.log

echo "[INFO] End run script."