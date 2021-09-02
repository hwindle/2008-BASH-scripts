#!/bin/bash

echo "My name is `basename $0` - I was called as $0"
echo "I was called with $# parameters."
if [ "$#" -eq "2" ]; then
  # the script was called with exactly two parameters, good. 
  echo "My first parameter is: $1"
  echo "My second parameter is: $2"
else
  # The $# variable must tell us that we have exactly two parameters.
  # Print error message
  echo "Usage: `basename $0` first second"
  echo "You provided $# parameters, but 2 are required."
fi

