#!/bin/bash

# Check if a filename was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

FILE="$1"

if [ ! -f "$FILE" ]; then
  echo "File '$FILE' not found!"
  exit 1
fi

# Calculate checksums
echo "Calculating checksums for file: $FILE"
echo

echo "MD5:      $(md5sum "$FILE" | awk '{ print $1 }')"
echo "SHA1:     $(sha1sum "$FILE" | awk '{ print $1 }')"
echo "SHA256:   $(sha256sum "$FILE" | awk '{ print $1 }')"
echo "SHA512:   $(sha512sum "$FILE" | awk '{ print $1 }')"
