#!/bin/bash

FILE="${1}"
SHA_CHECK="${2}"
ISO_SUM=$(sha256sum $FILE)
ISO_HASH=${ISO_SUM%% *}

echo $SHA_CHECK
echo $ISO_HASH

if [[ "$ISO_HASH" == *"$SHA_CHECK" ]]; then
    echo "OK!"
else
    echo "BAD!!!"
fi