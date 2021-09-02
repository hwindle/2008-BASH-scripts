#!/bin/bash

while read -p "What file do you want to test? " filename
do
if [ ! -e "$filename" ]; then
  echo "The file does not exist. "
  continue
fi

# the file exists
ls -ld "$filename"

if [ -L "$filename" ]; then
  echo "$filename is a symbolic link"
elif [ -f "$filename" ]; then
  echo "$filename is a regular file. "
elif [ -b "$filename" ]; then
  echo "$filename is a block device"
elif [ -c "$filename" ]; then
  echo "$filename is a character device"
elif [ -d "$filename" ]; then
  echo "$filename is a directory"
elif [ -p "$filename" ]; then
  echo "$filename is a named pipe"
elif [ -S "$filename" ]; then
  echo "$filename is a socket"
else
  echo "don't know what kind of file this is"
fi
done

