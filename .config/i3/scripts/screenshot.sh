#!/bin/sh

# Use the current timestamp as the unique filename of the screenshot.
FILE_PATH="/home/kallur/Pictures/Screenshots/$(date -u +'%Y-%m-%d-%T')-screenshot.png"

main() {
    case $1 in
    full) ksnip -f -p $FILE_PATH ;;
    select) ksnip -r -p $FILE_PATH ;;
    window) ksnip -m -p $FILE_PATH ;;
    opts) ksnip ;;
    esac
}

main "$@"
