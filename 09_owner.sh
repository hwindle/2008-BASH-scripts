#!/bin/bash

while read -p "What file do you want to test? " filename
do
if [ ! -e "$filename" ]; then
  echo "The file does not exist."
  continue
fi

# file exists
  ls -ld $filename
  if [ -O $filename ]; then
    echo "You own $filename"
  else
    echo "this isn't your file"
  fi
  if [ -G $filename ]; then
    echo "Your group owns $filename"
  else
    echo "Your group doesn't own $filename"
  fi
done

