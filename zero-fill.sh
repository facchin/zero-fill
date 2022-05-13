#!/bin/sh
# chmod +x zero-fill.sh

for (( i = 0;i<10;i++ )); do
    dd if=/dev/urandom of=/dev/$1 && dd if=/dev/zero of=/dev/$1
done
