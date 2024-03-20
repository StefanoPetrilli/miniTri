#!/bin/bash

sshpass -p "$MN_PSW" \
    rsync -avz --exclude='*.o' \
    --compress-level=9 \
    --exclude='*.a' \
    --exclude='*.exe' \
    --exclude='.git' \
    nct01110@"$MN_DT":/home/nct01/nct01110/bin/ \
    ../../
