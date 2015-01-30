#!/bin/bash
#
# Listen to individual .rra files
# Requires rplay and sox to be installed

function play() {
  filename=${item}
  extension="${filename##*.}"

  if [ $extension == "rra" ]
  then
    echo "Playing ${item}"
    rplay ${item}
  fi
}

function iterate() {
  for item in $*
  do
    if [ -d $item ]
    then
      echo "Entering directory $item"
      iterate "${item}/*"
    elif [ -f $item ]
    then
      play "$item"
    else
      echo "$item is not a valid object"
    fi
  done
}

function main() {
  iterate "$*"
}

main "$*"
