#!/bin/sh

# Use the current timestamp as the unique filename of the screenshot.
FILE_PATH="/home/kalle/Pictures/Screenshots/$(date -u +'%Y-%m-%d-%T')-screenshot.png"

main() {
    case $1 in
    full) flameshot full --clipboard --path $FILE_PATH ;;
    select) flameshot gui --clipboard --path $FILE_PATH ;;
    window) flameshot screen --clipboard --path $FILE_PATH ;;
    opts) flameshot ;;
    esac
}

main "$@"
