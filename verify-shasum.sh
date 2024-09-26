#!/bin/bash

# a script to verify the SHA-256 checksum of a file

# define font colors
YELLOW='\033[33m'
RED='\033[31m'
DEFAULT='\033[0m'

# check if two parameters are provided
if [ "$#" -ne 2 ]; then
  echo -e "\n${RED}Missing a parameter${DEFAULT}"
  echo -e "Usage: verify-shasum-256 ${YELLOW}<source_shasum> <file_to_be_verified>${DEFAULT}\n"
  exit 1
fi

# source shasum
source_shasum=$1

# file to be calculated
file=$2

# function to show progress indicator
show_progress() {
  printf "Comparing hashes: "
    while true; do
      printf "${YELLOW}#${DEFAULT}"
      sleep 0.5
    done
}

# start progress indicator
show_progress &
progress_pid=$!

# kill process with control + c
trap "kill $progress_pid; exit" SIGINT

# check file shasum
file_shasum=$(shasum -a 256 "$file" | awk '{ print $1 }')

# end progress indicator
kill $progress_pid
echo

if [ "$source_shasum" = "$file_shasum" ]; then
  echo -e "\nSource shasum: $source_shasum"
  echo -e "Target shasum:   $file_shasum"
  echo -e "\nSHA-256 checksum verification successful: ${YELLOW}Hash is a match.${DEFAULT}\n"
else
  echo -e "\nSource shasum: $source_shasum"
  echo -e "Target shasum:   $file_shasum"
  echo -e "\nSHA-256 checksum verification failed: ${RED}The hash does not match.${DEFAULT}\n" 
fi
