#!/bin/bash
FILES="${1}"

for f in $(find "$FILES" -type f); do chmod 777 -R "$f" && chmod ugo+rwx -R "$f"; done

find "${FILES}" -type d |
while read dir;
  do
      chmod 777 -R "$dir" && chmod ugo+rwx -R "$dir";
  done

cp -R "${FILES}" "${2}"
