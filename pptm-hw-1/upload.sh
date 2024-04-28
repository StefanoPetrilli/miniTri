#!/bin/bash

sshpass -p "$MN_PSW" \
    rsync -avz --exclude='*.o' \
    --exclude='*.a' \
    --exclude='*.exe' \
    --exclude='.git/' \
    --exclude='traces/' \
    --exclude='cutted_traces/' \
    ../ \
    "$MN_USR"@"$MN_DT":/home/nct01/"$MN_USR"/bin/miniTri


