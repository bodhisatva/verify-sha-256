#!/bin/bash

# a script to verify the SHA-256 checksum of a file

# check if two parameters are provided
if [ "$#" -ne 2 ]; then
  echo -e "\nMissing a parameter"
  echo -e "Usage: verify-shasum-256 <source_shasum> <file_to_be_verified>\n"
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
      printf "\e[33m#\e[0m"
      sleep 1
    done
}

# start progress indicator
show_progress &
progress_pid=$!

# check file shasum
file_shasum=$(shasum -a 256 "$file" | awk '{ print $1 }')

# end progress indicator
kill $progress_pid
echo

if [ "$source_shasum" = "$file_shasum" ]; then
 echo -e "\nSHA-256 checksum verification successful: Hash is a match.\n"
else
 echo -e "\nSHA-256 checksum verification failed: The hash does not match.\n" 
fi
