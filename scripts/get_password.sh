#!/bin/bash

##/usr/bin/osascript -e 'text returned of (display dialog "Password for repo?" default answer ""with icon stop buttons {"Cancel", "Continue"} default button "Continue" with hidden answer)'
##exit_code=$?
##echo $exit_code
##if [ $exit_code != 0 ]; then
##    echo "Restic backup failed. Exit code $exit_code"
##    /usr/bin/osascript -e "display notification \"Restic backup failed. Exit code $exit_code\" with title \"Restic - Backup failed\""
##    exit $exit_code
##  fi
#echo "uuu secret"
#
#a_flag=false
#b_flag=false
#files=''
#verbose=false
#
#print_usage() {
#  printf "Usage: ..."
#}
#
#while getopts 'abf:v' flag; do
#  case "${flag}" in
#    a) a_flag=true ;;
#    b) b_flag=true ;;
#    f) files="${OPTARG}" ;;
#    v) verbose=true ;;
#    *) print_usage
#       exit 1 ;;
#  esac
#done
#
#echo "a_flag=$a_flag"
#echo "b_flag=$b_flag"
#echo "files=$files"
#echo "verbose=$verbose"
echo test