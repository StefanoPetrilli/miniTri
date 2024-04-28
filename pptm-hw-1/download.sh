#!/bin/bash

sshpass -p "$MN_PSW" \
    rsync -avz --exclude='*.o' \
    --exclude='*.a' \
    --exclude='*.exe' \
    --exclude='128/' \
    --exclude='.git' \
    nct01110@"$MN_DT":/home/nct01/nct01110/bin/ \
    ../../
