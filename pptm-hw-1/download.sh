#!/bin/bash

sshpass -p "$MN_PSW" \
    rsync -avz --compress-level=9 --exclude='*.o' \
    --exclude='*.a' \
    --exclude='*.exe' \
    --exclude='128/' \
    --exclude='.git' \
    nct01110@"$MN_DT":/home/nct/nct01110/bin/ \
    ../../
