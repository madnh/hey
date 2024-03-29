#!/usr/bin/env bash

function ensurePathExists(){
    local TARGET_PATH="$1"

    if [ ! -e "$TARGET_PATH" ]; then
        echo "Path \"$TARGET_PATH\" is not exists!"

        exit 1
    fi
}

function ensureFileExists(){
    local TARGET_PATH="$1"

    if [ ! -f "$TARGET_PATH" ]; then
        echo "File \"$TARGET_PATH\" is not exists!"

        exit 1
    fi
}

function ensureDirExists(){
    local TARGET_PATH="$1"

    if [ ! -d "$TARGET_PATH" ]; then
        echo "Folder \"$TARGET_PATH\" is not exists!"

        exit 1
    fi
}

function ensureDirNotEmpty(){
    local TARGET_PATH="$1"
    
    if [ -z "$(ls -A $TARGET_PATH)" ]; then
        echo "$TARGET_PATH is empty"

        exit 1
    fi
}



function line() {
    echo '--------------------------------------------------'
}

function shortLine() {
    echo '-------------------'
}


function step(){
    echo 
    echo 
    echo $1
    echo "------------------------"
}

function completed(){
    local MESSAGE=${1:-Done}

    echo -e "${FG_GREEN}${ICON_HEAVY_CHECK}  ${FG_DEFAULT} ${MESSAGE}  ${RESET}"
}

function success(){
    completed "Success"
}

function errorMessage(){
    local MESSAGE="$1"

    echo -e "${BG_RED} ${FG_WHITE} ${MESSAGE} ${RESET}"
}