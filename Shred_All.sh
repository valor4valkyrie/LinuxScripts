#!/bin/bash
FILES="${1}"
IFS=$'\n'
for f in $(find "$FILES" -type f);
do
  SPACELESS_FILES=$(printf %q "$f");
  shred -vzu -n10 "$f";
done

for dir in $(find "$FILES" -type d);
do
  SPACELESS_DIR=$(printf %q "$dir");
  rm -r "$SPACELESS_DIR";
done
