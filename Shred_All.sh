#!/bin/bash
FILES="${1}"

for f in $(find "$FILES" -type f);
do
  shred -vzu -n10 "$f";
done

find "${FILES}" -type d | while read dir;
do
  rm -r "$dir";
done
