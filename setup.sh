#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
    python -m pip install pync   
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ] || [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    python -m pip install win10toast
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    apt-get install libnotify-bin
fi