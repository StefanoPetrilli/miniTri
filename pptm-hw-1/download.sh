#!/bin/bash

sshpass -p "$MN_PSW" \
    rsync -avzn --exclude='*.o' \
    --exclude='*.a' \
    --exclude='*.exe' \
    --exclude='.git' \
    nct01110@"$MN_DT":/home/nct01/nct01110/bin/ \
    ../../
