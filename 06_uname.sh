#!/bin/bash
OS=`uname -s`

if [ "$OS" = "FreeBSD" ]; then
  echo "This is FreeBSD"
elif [ "$OS" = "Cygwin" ]; then
  echo "This is Cygwin"
elif [ "$OS" = "SunOS" ]; then
  echo "This is Solaris"
elif [ "$OS" = "Darwin" ]; then
  echo "This is Mac OSX"
elif [ "$OS" = "Linux" ]; then
  echo "This is Linux"
else
  echo "Failed to identify this OS"
fi

